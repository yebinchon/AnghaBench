; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-misc.c_pqPutMsgStart.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-misc.c_pqPutMsgStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32, i32, i64, i32 }

@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"To backend> Msg %c\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqPutMsgStart(i8 signext %0, i32 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8 %0, i8* %5, align 1
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %10 = load i8, i8* %5, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %9, align 4
  br label %21

17:                                               ; preds = %3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %17, %12
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @PG_PROTOCOL_MAJOR(i32 %27)
  %29 = icmp sge i32 %28, 3
  br i1 %29, label %30, label %34

30:                                               ; preds = %24, %21
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 4
  store i32 %33, i32* %9, align 4
  br label %35

34:                                               ; preds = %24
  store i32 -1, i32* %8, align 4
  br label %35

35:                                               ; preds = %34, %30
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = call i64 @pqCheckOutBufferSpace(i32 %36, %struct.TYPE_4__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @EOF, align 4
  store i32 %41, i32* %4, align 4
  br label %82

42:                                               ; preds = %35
  %43 = load i8, i8* %5, align 1
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i8, i8* %5, align 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %49, i64 %53
  store i8 %46, i8* %54, align 1
  br label %55

55:                                               ; preds = %45, %42
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %55
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = load i8, i8* %5, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i8, i8* %5, align 1
  %75 = sext i8 %74 to i32
  br label %77

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76, %73
  %78 = phi i32 [ %75, %73 ], [ 32, %76 ]
  %79 = trunc i32 %78 to i8
  %80 = call i32 @fprintf(i64 %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8 signext %79)
  br label %81

81:                                               ; preds = %77, %55
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %40
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @PG_PROTOCOL_MAJOR(i32) #1

declare dso_local i64 @pqCheckOutBufferSpace(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @fprintf(i64, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
