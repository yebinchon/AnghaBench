; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_print_function_rettype.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_print_function_rettype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"TABLE(\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"SETOF \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @print_function_rettype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_function_rettype(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @GETSTRUCT(i32 %8)
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = call i32 @initStringInfo(%struct.TYPE_8__* %7)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %2
  %18 = call i32 @appendStringInfoString(%struct.TYPE_8__* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @print_function_arguments(%struct.TYPE_8__* %7, i32 %19, i32 1, i32 0)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 @appendStringInfoChar(%struct.TYPE_8__* %7, i8 signext 41)
  br label %27

25:                                               ; preds = %17
  %26 = call i32 @resetStringInfo(%struct.TYPE_8__* %7)
  br label %27

27:                                               ; preds = %25, %23
  br label %28

28:                                               ; preds = %27, %2
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 @appendStringInfoString(%struct.TYPE_8__* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %31
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i8* @format_type_be(i32 %41)
  %43 = call i32 @appendStringInfoString(%struct.TYPE_8__* %7, i8* %42)
  br label %44

44:                                               ; preds = %38, %28
  %45 = load i32, i32* %3, align 4
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @appendBinaryStringInfo(i32 %45, i32 %47, i32 %49)
  ret void
}

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_8__*) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @print_function_arguments(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @appendStringInfoChar(%struct.TYPE_8__*, i8 signext) #1

declare dso_local i32 @resetStringInfo(%struct.TYPE_8__*) #1

declare dso_local i8* @format_type_be(i32) #1

declare dso_local i32 @appendBinaryStringInfo(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
