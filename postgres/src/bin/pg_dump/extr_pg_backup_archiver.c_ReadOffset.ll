; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c_ReadOffset.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c_ReadOffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 (%struct.TYPE_7__*)*, i32 }

@K_VERS_1_7 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"unexpected data offset flag %d\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"file offset in dump file is too large\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ReadOffset(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @K_VERS_1_7, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = call i32 @ReadInt(%struct.TYPE_7__* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 129, i32* %3, align 4
  br label %80

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 130, i32* %3, align 4
  br label %80

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %6, align 4
  %28 = load i32*, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  store i32 128, i32* %3, align 4
  br label %80

29:                                               ; preds = %2
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %31, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = call i32 %32(%struct.TYPE_7__* %33)
  %35 = and i32 %34, 255
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  switch i32 %36, label %38 [
    i32 129, label %37
    i32 130, label %37
    i32 128, label %37
  ]

37:                                               ; preds = %29, %29, %29
  br label %41

38:                                               ; preds = %29
  %39 = load i32, i32* %8, align 4
  %40 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %38, %37
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %75, %41
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %78

48:                                               ; preds = %42
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp ult i64 %50, 4
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %54, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %57 = call i32 %55(%struct.TYPE_7__* %56)
  %58 = load i32, i32* %7, align 4
  %59 = mul nsw i32 %58, 8
  %60 = shl i32 %57, %59
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 4
  br label %74

64:                                               ; preds = %48
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %66, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = call i32 %67(%struct.TYPE_7__* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %64
  br label %74

74:                                               ; preds = %73, %52
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %42

78:                                               ; preds = %42
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %26, %24, %20
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @ReadInt(%struct.TYPE_7__*) #1

declare dso_local i32 @fatal(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
