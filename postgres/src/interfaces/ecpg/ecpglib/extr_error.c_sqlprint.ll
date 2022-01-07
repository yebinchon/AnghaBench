; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_error.c_sqlprint.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_error.c_sqlprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlca_t = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i64 }

@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"SQL error: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlprint() #0 {
  %1 = alloca %struct.sqlca_t*, align 8
  %2 = call %struct.sqlca_t* (...) @ECPGget_sqlca()
  store %struct.sqlca_t* %2, %struct.sqlca_t** %1, align 8
  %3 = load %struct.sqlca_t*, %struct.sqlca_t** %1, align 8
  %4 = icmp eq %struct.sqlca_t* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @ecpg_log(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %24

7:                                                ; preds = %0
  %8 = load %struct.sqlca_t*, %struct.sqlca_t** %1, align 8
  %9 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.sqlca_t*, %struct.sqlca_t** %1, align 8
  %13 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i8, i8* %11, i64 %15
  store i8 0, i8* %16, align 1
  %17 = load i32, i32* @stderr, align 4
  %18 = call i8* @ecpg_gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.sqlca_t*, %struct.sqlca_t** %1, align 8
  %20 = getelementptr inbounds %struct.sqlca_t, %struct.sqlca_t* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @fprintf(i32 %17, i8* %18, i8* %22)
  br label %24

24:                                               ; preds = %7, %5
  ret void
}

declare dso_local %struct.sqlca_t* @ECPGget_sqlca(...) #1

declare dso_local i32 @ecpg_log(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @ecpg_gettext(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
