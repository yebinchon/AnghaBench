; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_async.c_asyncQueueProcessPageEntries.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_async.c_asyncQueueProcessPageEntries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8*, i32, i32, i32 }

@MyDatabaseId = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32)* @asyncQueueProcessPageEntries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asyncQueueProcessPageEntries(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_2__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store volatile i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %83, %4
  %16 = load i32*, i32** %5, align 8
  %17 = load volatile i32, i32* %16, align 4
  store volatile i32 %17, i32* %12, align 4
  %18 = load volatile i32, i32* %12, align 4
  %19 = load volatile i32, i32* %6, align 4
  %20 = call i64 @QUEUE_POS_EQUAL(i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %87

23:                                               ; preds = %15
  %24 = load i8*, i8** %7, align 8
  %25 = load volatile i32, i32* %12, align 4
  %26 = call i32 @QUEUE_POS_OFFSET(i32 %25)
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = bitcast i8* %28 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %29, %struct.TYPE_2__** %11, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @asyncQueueAdvance(i32* %30, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MyDatabaseId, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %82

40:                                               ; preds = %23
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i64 @XidInMVCCSnapshot(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load volatile i32, i32* %12, align 4
  %49 = load i32*, i32** %5, align 8
  store volatile i32 %48, i32* %49, align 4
  store i32 1, i32* %9, align 4
  br label %87

50:                                               ; preds = %40
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @TransactionIdDidCommit(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %50
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %13, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = call i64 @IsListeningOn(i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %56
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  store i8* %71, i8** %14, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @NotifyMyFrontEnd(i8* %72, i8* %73, i32 %76)
  br label %78

78:                                               ; preds = %63, %56
  br label %80

79:                                               ; preds = %50
  br label %80

80:                                               ; preds = %79, %78
  br label %81

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %81, %23
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  br i1 %86, label %15, label %87

87:                                               ; preds = %83, %47, %22
  %88 = load i32*, i32** %5, align 8
  %89 = load volatile i32, i32* %88, align 4
  %90 = load volatile i32, i32* %6, align 4
  %91 = call i64 @QUEUE_POS_EQUAL(i32 %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i32 1, i32* %9, align 4
  br label %94

94:                                               ; preds = %93, %87
  %95 = load i32, i32* %9, align 4
  ret i32 %95
}

declare dso_local i64 @QUEUE_POS_EQUAL(i32, i32) #1

declare dso_local i32 @QUEUE_POS_OFFSET(i32) #1

declare dso_local i32 @asyncQueueAdvance(i32*, i32) #1

declare dso_local i64 @XidInMVCCSnapshot(i32, i32) #1

declare dso_local i64 @TransactionIdDidCommit(i32) #1

declare dso_local i64 @IsListeningOn(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @NotifyMyFrontEnd(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
