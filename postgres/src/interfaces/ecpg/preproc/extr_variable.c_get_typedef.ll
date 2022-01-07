; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_variable.c_get_typedef.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_variable.c_get_typedef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typedefs = type { %struct.typedefs*, i32 }

@types = common dso_local global %struct.typedefs* null, align 8
@PARSE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unrecognized data type name \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.typedefs* @get_typedef(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.typedefs*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load %struct.typedefs*, %struct.typedefs** @types, align 8
  store %struct.typedefs* %4, %struct.typedefs** %3, align 8
  br label %5

5:                                                ; preds = %18, %1
  %6 = load %struct.typedefs*, %struct.typedefs** %3, align 8
  %7 = icmp ne %struct.typedefs* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = load %struct.typedefs*, %struct.typedefs** %3, align 8
  %10 = getelementptr inbounds %struct.typedefs, %struct.typedefs* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i64 @strcmp(i32 %11, i8* %12)
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %8, %5
  %16 = phi i1 [ false, %5 ], [ %14, %8 ]
  br i1 %16, label %17, label %22

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.typedefs*, %struct.typedefs** %3, align 8
  %20 = getelementptr inbounds %struct.typedefs, %struct.typedefs* %19, i32 0, i32 0
  %21 = load %struct.typedefs*, %struct.typedefs** %20, align 8
  store %struct.typedefs* %21, %struct.typedefs** %3, align 8
  br label %5

22:                                               ; preds = %15
  %23 = load %struct.typedefs*, %struct.typedefs** %3, align 8
  %24 = icmp ne %struct.typedefs* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @PARSE_ERROR, align 4
  %27 = load i8*, i8** %2, align 8
  %28 = call i32 @mmfatal(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %25, %22
  %30 = load %struct.typedefs*, %struct.typedefs** %3, align 8
  ret %struct.typedefs* %30
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @mmfatal(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
