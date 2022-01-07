; ModuleID = '/home/carl/AnghaBench/radare2/shlr/qnx/src/extr_core.c_qnxr_read_memory.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/qnx/src/extr_core.c_qnxr_read_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_14__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }

@DStMsg_memrd = common dso_local global i32 0, align 4
@SET_CHANNEL_DEBUG = common dso_local global i32 0, align 4
@DS_DATA_MAX_SIZE = common dso_local global i32 0, align 4
@DSrMsg_okdata = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qnxr_read_memory(%struct.TYPE_19__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %15 = icmp ne %struct.TYPE_19__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %4
  store i32 -1, i32* %5, align 4
  br label %95

20:                                               ; preds = %16
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %89, %20
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %23 = load i32, i32* @DStMsg_memrd, align 4
  %24 = load i32, i32* @SET_CHANNEL_DEBUG, align 4
  %25 = call i32 @nto_send_init(%struct.TYPE_19__* %22, i32 %23, i32 0, i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %13, align 4
  %29 = call i32 @EXTRACT_UNSIGNED_INTEGER(i32* %13, i32 8)
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  store i32 %29, i32* %34, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %11, align 4
  %37 = sub nsw i32 %35, %36
  %38 = load i32, i32* @DS_DATA_MAX_SIZE, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %21
  %41 = load i32, i32* @DS_DATA_MAX_SIZE, align 4
  br label %46

42:                                               ; preds = %21
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %11, align 4
  %45 = sub nsw i32 %43, %44
  br label %46

46:                                               ; preds = %42, %40
  %47 = phi i32 [ %41, %40 ], [ %45, %42 ]
  store i32 %47, i32* %12, align 4
  %48 = call i32 @EXTRACT_SIGNED_INTEGER(i32* %12, i32 2)
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  store i32 %48, i32* %53, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %55 = call i32 @nto_send(%struct.TYPE_19__* %54, i32 8, i32 0)
  %56 = sext i32 %55 to i64
  %57 = sub i64 %56, 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp sle i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %46
  br label %93

62:                                               ; preds = %46
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @DSrMsg_okdata, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %62
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @memcpy(i32* %75, i32 %81, i32 %82)
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %11, align 4
  br label %88

87:                                               ; preds = %62
  br label %93

88:                                               ; preds = %71
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %21, label %93

93:                                               ; preds = %89, %87, %61
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %93, %19
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @nto_send_init(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @EXTRACT_UNSIGNED_INTEGER(i32*, i32) #1

declare dso_local i32 @EXTRACT_SIGNED_INTEGER(i32*, i32) #1

declare dso_local i32 @nto_send(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
