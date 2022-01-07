; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_printtup.c_printtup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_printtup.c_printtup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64*, i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_11__ = type { i64, i32, i64 }

@VARHDRSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*)* @printtup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @printtup(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %5, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = bitcast i32* %18 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %6, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 4
  store i32* %21, i32** %8, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = icmp ne %struct.TYPE_10__* %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %2
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30, %2
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @printtup_prepare_info(%struct.TYPE_12__* %37, %struct.TYPE_10__* %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %30
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = call i32 @slot_getallattrs(%struct.TYPE_9__* %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @MemoryContextSwitchTo(i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @pq_beginmessage_reuse(i32* %48, i8 signext 68)
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @pq_sendint16(i32* %50, i32 %51)
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %128, %41
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %131

57:                                               ; preds = %53
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i64 %62
  store %struct.TYPE_11__* %63, %struct.TYPE_11__** %11, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %12, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %57
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @pq_sendint32(i32* %80, i32 -1)
  br label %128

82:                                               ; preds = %57
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @DatumGetPointer(i32 %88)
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @VARSIZE_ANY(i32 %90)
  %92 = call i32 @VALGRIND_CHECK_MEM_IS_DEFINED(i32 %89, i32 %91)
  br label %93

93:                                               ; preds = %87, %82
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %93
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i32, i32* %12, align 4
  %102 = call i8* @OutputFunctionCall(i32* %100, i32 %101)
  store i8* %102, i8** %13, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = load i8*, i8** %13, align 8
  %105 = load i8*, i8** %13, align 8
  %106 = call i32 @strlen(i8* %105)
  %107 = call i32 @pq_sendcountedtext(i32* %103, i8* %104, i32 %106, i32 0)
  br label %127

108:                                              ; preds = %93
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = load i32, i32* %12, align 4
  %112 = call i32* @SendFunctionCall(i32* %110, i32 %111)
  store i32* %112, i32** %14, align 8
  %113 = load i32*, i32** %8, align 8
  %114 = load i32*, i32** %14, align 8
  %115 = call i32 @VARSIZE(i32* %114)
  %116 = load i32, i32* @VARHDRSZ, align 4
  %117 = sub nsw i32 %115, %116
  %118 = call i32 @pq_sendint32(i32* %113, i32 %117)
  %119 = load i32*, i32** %8, align 8
  %120 = load i32*, i32** %14, align 8
  %121 = call i32 @VARDATA(i32* %120)
  %122 = load i32*, i32** %14, align 8
  %123 = call i32 @VARSIZE(i32* %122)
  %124 = load i32, i32* @VARHDRSZ, align 4
  %125 = sub nsw i32 %123, %124
  %126 = call i32 @pq_sendbytes(i32* %119, i32 %121, i32 %125)
  br label %127

127:                                              ; preds = %108, %98
  br label %128

128:                                              ; preds = %127, %79
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %53

131:                                              ; preds = %53
  %132 = load i32*, i32** %8, align 8
  %133 = call i32 @pq_endmessage_reuse(i32* %132)
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @MemoryContextSwitchTo(i32 %134)
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @MemoryContextReset(i32 %138)
  ret i32 1
}

declare dso_local i32 @printtup_prepare_info(%struct.TYPE_12__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @slot_getallattrs(%struct.TYPE_9__*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @pq_beginmessage_reuse(i32*, i8 signext) #1

declare dso_local i32 @pq_sendint16(i32*, i32) #1

declare dso_local i32 @pq_sendint32(i32*, i32) #1

declare dso_local i32 @VALGRIND_CHECK_MEM_IS_DEFINED(i32, i32) #1

declare dso_local i32 @DatumGetPointer(i32) #1

declare dso_local i32 @VARSIZE_ANY(i32) #1

declare dso_local i8* @OutputFunctionCall(i32*, i32) #1

declare dso_local i32 @pq_sendcountedtext(i32*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @SendFunctionCall(i32*, i32) #1

declare dso_local i32 @VARSIZE(i32*) #1

declare dso_local i32 @pq_sendbytes(i32*, i32, i32) #1

declare dso_local i32 @VARDATA(i32*) #1

declare dso_local i32 @pq_endmessage_reuse(i32*) #1

declare dso_local i32 @MemoryContextReset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
