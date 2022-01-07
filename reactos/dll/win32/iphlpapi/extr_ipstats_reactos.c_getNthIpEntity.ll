; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_ipstats_reactos.c_getNthIpEntity.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_ipstats_reactos.c_getNthIpEntity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Entity %d is an IP Entity\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Index %lu is entity #%d - %04x:%08x\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_UNSUCCESSFUL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getNthIpEntity(i32 %0, i32 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %10, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @tdiGetEntityIDSet(i32 %13, %struct.TYPE_8__** %10, i32* %8)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = call i32 @NT_SUCCESS(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %4, align 4
  br label %85

20:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %45, %20
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i64 %29
  %31 = call i64 @isIpEntity(i32 %26, %struct.TYPE_8__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %25
  %34 = load i32, i32* %12, align 4
  %35 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %48

40:                                               ; preds = %33
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %43, %25
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %12, align 4
  br label %21

48:                                               ; preds = %39, %21
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %81

52:                                               ; preds = %48
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %81

56:                                               ; preds = %52
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58, i32 %64, i32 %70)
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i64 %75
  %77 = call i32 @memcpy(%struct.TYPE_8__* %72, %struct.TYPE_8__* %76, i32 8)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %79 = call i32 @tdiFreeThingSet(%struct.TYPE_8__* %78)
  %80 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %80, i32* %4, align 4
  br label %85

81:                                               ; preds = %52, %48
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %83 = call i32 @tdiFreeThingSet(%struct.TYPE_8__* %82)
  %84 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %81, %56, %18
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @tdiGetEntityIDSet(i32, %struct.TYPE_8__**, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i64 @isIpEntity(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @tdiFreeThingSet(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
