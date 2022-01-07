; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_descriptor.c_ECPGget_desc_header.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_descriptor.c_ECPGget_desc_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlca_t = type { i32* }

@ECPG_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"ECPGget_desc_header: found %d attributes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ECPGget_desc_header(i32 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.sqlca_t*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = call %struct.sqlca_t* (...) @ECPGget_sqlca()
  store %struct.sqlca_t* %10, %struct.sqlca_t** %9, align 8
  %11 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %12 = icmp eq %struct.sqlca_t* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @ECPG_OUT_OF_MEMORY, align 4
  %16 = load i32, i32* @ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY, align 4
  %17 = call i32 @ecpg_raise(i32 %14, i32 %15, i32 %16, i32* null)
  store i32 0, i32* %4, align 4
  br label %38

18:                                               ; preds = %3
  %19 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %20 = call i32 @ecpg_init_sqlca(%struct.sqlca_t* %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = call i32* @ecpg_result_by_descriptor(i32 %21, i8* %22)
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %38

27:                                               ; preds = %18
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @PQnfields(i32* %28)
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  %31 = load %struct.sqlca_t*, %struct.sqlca_t** %9, align 8
  %32 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  store i32 1, i32* %34, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ecpg_log(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 1, i32* %4, align 4
  br label %38

38:                                               ; preds = %27, %26, %13
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.sqlca_t* @ECPGget_sqlca(...) #1

declare dso_local i32 @ecpg_raise(i32, i32, i32, i32*) #1

declare dso_local i32 @ecpg_init_sqlca(%struct.sqlca_t*) #1

declare dso_local i32* @ecpg_result_by_descriptor(i32, i8*) #1

declare dso_local i32 @PQnfields(i32*) #1

declare dso_local i32 @ecpg_log(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
