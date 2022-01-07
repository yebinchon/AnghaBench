; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/serial_link/protocol/extr_transport.c_add_remote_objects.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/serial_link/protocol/extr_transport.c_add_remote_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32* }

@remote_objects = common dso_local global %struct.TYPE_4__** null, align 8
@num_remote_objects = common dso_local global i32 0, align 4
@MASTER_TO_ALL_SLAVES = common dso_local global i64 0, align 8
@MASTER_TO_SINGLE_SLAVE = common dso_local global i64 0, align 8
@NUM_SLAVES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_remote_objects(%struct.TYPE_4__** %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %122, %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %125

20:                                               ; preds = %16
  %21 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %21, i64 %23
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %6, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @remote_objects, align 8
  %28 = load i32, i32* @num_remote_objects, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @num_remote_objects, align 4
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %27, i64 %30
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %31, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MASTER_TO_ALL_SLAVES, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %20
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %7, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @triple_buffer_init(i32* %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @LOCAL_OBJECT_SIZE(i32 %48)
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %45, i64 %50
  store i32* %51, i32** %8, align 8
  %52 = load i32*, i32** %8, align 8
  store i32* %52, i32** %7, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @triple_buffer_init(i32* %53)
  br label %121

55:                                               ; preds = %20
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MASTER_TO_SINGLE_SLAVE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %87

61:                                               ; preds = %55
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %80, %61
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @NUM_SLAVES, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %65
  %70 = load i32*, i32** %9, align 8
  store i32* %70, i32** %11, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 @triple_buffer_init(i32* %71)
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @LOCAL_OBJECT_SIZE(i32 %75)
  %77 = load i32*, i32** %9, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32* %79, i32** %9, align 8
  br label %80

80:                                               ; preds = %69
  %81 = load i32, i32* %10, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %65

83:                                               ; preds = %65
  %84 = load i32*, i32** %9, align 8
  store i32* %84, i32** %12, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = call i32 @triple_buffer_init(i32* %85)
  br label %120

87:                                               ; preds = %55
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  store i32* %90, i32** %13, align 8
  %91 = load i32*, i32** %13, align 8
  store i32* %91, i32** %14, align 8
  %92 = load i32*, i32** %14, align 8
  %93 = call i32 @triple_buffer_init(i32* %92)
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @LOCAL_OBJECT_SIZE(i32 %96)
  %98 = load i32*, i32** %13, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %13, align 8
  store i32 0, i32* %15, align 4
  br label %101

101:                                              ; preds = %116, %87
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* @NUM_SLAVES, align 4
  %104 = icmp ult i32 %102, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %101
  %106 = load i32*, i32** %13, align 8
  store i32* %106, i32** %14, align 8
  %107 = load i32*, i32** %14, align 8
  %108 = call i32 @triple_buffer_init(i32* %107)
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @REMOTE_OBJECT_SIZE(i32 %111)
  %113 = load i32*, i32** %13, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  store i32* %115, i32** %13, align 8
  br label %116

116:                                              ; preds = %105
  %117 = load i32, i32* %15, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %15, align 4
  br label %101

119:                                              ; preds = %101
  br label %120

120:                                              ; preds = %119, %83
  br label %121

121:                                              ; preds = %120, %37
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %5, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %5, align 4
  br label %16

125:                                              ; preds = %16
  ret void
}

declare dso_local i32 @triple_buffer_init(i32*) #1

declare dso_local i32 @LOCAL_OBJECT_SIZE(i32) #1

declare dso_local i32 @REMOTE_OBJECT_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
