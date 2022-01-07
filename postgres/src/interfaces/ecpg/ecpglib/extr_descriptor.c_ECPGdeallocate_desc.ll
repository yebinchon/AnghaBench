; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_descriptor.c_ECPGdeallocate_desc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_descriptor.c_ECPGdeallocate_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.descriptor = type { %struct.descriptor*, i32 }
%struct.sqlca_t = type { i32 }

@ECPG_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@ECPG_UNKNOWN_DESCRIPTOR = common dso_local global i32 0, align 4
@ECPG_SQLSTATE_INVALID_SQL_DESCRIPTOR_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ECPGdeallocate_desc(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.descriptor*, align 8
  %7 = alloca %struct.descriptor*, align 8
  %8 = alloca %struct.sqlca_t*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = call %struct.sqlca_t* (...) @ECPGget_sqlca()
  store %struct.sqlca_t* %9, %struct.sqlca_t** %8, align 8
  %10 = load %struct.sqlca_t*, %struct.sqlca_t** %8, align 8
  %11 = icmp eq %struct.sqlca_t* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @ECPG_OUT_OF_MEMORY, align 4
  %15 = load i32, i32* @ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY, align 4
  %16 = call i32 @ecpg_raise(i32 %13, i32 %14, i32 %15, i8* null)
  store i32 0, i32* %3, align 4
  br label %60

17:                                               ; preds = %2
  %18 = load %struct.sqlca_t*, %struct.sqlca_t** %8, align 8
  %19 = call i32 @ecpg_init_sqlca(%struct.sqlca_t* %18)
  %20 = call %struct.descriptor* (...) @get_descriptors()
  store %struct.descriptor* %20, %struct.descriptor** %6, align 8
  store %struct.descriptor* null, %struct.descriptor** %7, align 8
  br label %21

21:                                               ; preds = %49, %17
  %22 = load %struct.descriptor*, %struct.descriptor** %6, align 8
  %23 = icmp ne %struct.descriptor* %22, null
  br i1 %23, label %24, label %54

24:                                               ; preds = %21
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.descriptor*, %struct.descriptor** %6, align 8
  %27 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @strcmp(i8* %25, i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %24
  %32 = load %struct.descriptor*, %struct.descriptor** %7, align 8
  %33 = icmp ne %struct.descriptor* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.descriptor*, %struct.descriptor** %6, align 8
  %36 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %35, i32 0, i32 0
  %37 = load %struct.descriptor*, %struct.descriptor** %36, align 8
  %38 = load %struct.descriptor*, %struct.descriptor** %7, align 8
  %39 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %38, i32 0, i32 0
  store %struct.descriptor* %37, %struct.descriptor** %39, align 8
  br label %45

40:                                               ; preds = %31
  %41 = load %struct.descriptor*, %struct.descriptor** %6, align 8
  %42 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %41, i32 0, i32 0
  %43 = load %struct.descriptor*, %struct.descriptor** %42, align 8
  %44 = call i32 @set_descriptors(%struct.descriptor* %43)
  br label %45

45:                                               ; preds = %40, %34
  %46 = load %struct.descriptor*, %struct.descriptor** %6, align 8
  %47 = call i32 @descriptor_free(%struct.descriptor* %46)
  store i32 1, i32* %3, align 4
  br label %60

48:                                               ; preds = %24
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.descriptor*, %struct.descriptor** %6, align 8
  store %struct.descriptor* %50, %struct.descriptor** %7, align 8
  %51 = load %struct.descriptor*, %struct.descriptor** %6, align 8
  %52 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %51, i32 0, i32 0
  %53 = load %struct.descriptor*, %struct.descriptor** %52, align 8
  store %struct.descriptor* %53, %struct.descriptor** %6, align 8
  br label %21

54:                                               ; preds = %21
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @ECPG_UNKNOWN_DESCRIPTOR, align 4
  %57 = load i32, i32* @ECPG_SQLSTATE_INVALID_SQL_DESCRIPTOR_NAME, align 4
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @ecpg_raise(i32 %55, i32 %56, i32 %57, i8* %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %54, %45, %12
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.sqlca_t* @ECPGget_sqlca(...) #1

declare dso_local i32 @ecpg_raise(i32, i32, i32, i8*) #1

declare dso_local i32 @ecpg_init_sqlca(%struct.sqlca_t*) #1

declare dso_local %struct.descriptor* @get_descriptors(...) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @set_descriptors(%struct.descriptor*) #1

declare dso_local i32 @descriptor_free(%struct.descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
