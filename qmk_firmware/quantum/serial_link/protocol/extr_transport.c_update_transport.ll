; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/serial_link/protocol/extr_transport.c_update_transport.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/serial_link/protocol/extr_transport.c_update_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32*, i64 }

@num_remote_objects = common dso_local global i32 0, align 4
@remote_objects = common dso_local global %struct.TYPE_3__** null, align 8
@MASTER_TO_ALL_SLAVES = common dso_local global i64 0, align 8
@SLAVE_TO_MASTER = common dso_local global i64 0, align 8
@LOCAL_OBJECT_EXTRA = common dso_local global i64 0, align 8
@NUM_SLAVES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_transport() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %117, %0
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @num_remote_objects, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %120

15:                                               ; preds = %11
  %16 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @remote_objects, align 8
  %17 = load i32, i32* %1, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %16, i64 %18
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %2, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MASTER_TO_ALL_SLAVES, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %15
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SLAVE_TO_MASTER, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %68

32:                                               ; preds = %26, %15
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %3, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @LOCAL_OBJECT_EXTRA, align 8
  %40 = add i64 %38, %39
  %41 = load i32*, i32** %3, align 8
  %42 = call i64 @triple_buffer_read_internal(i64 %40, i32* %41)
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** %4, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %67

46:                                               ; preds = %32
  %47 = load i32, i32* %1, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  store i32 %47, i32* %52, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MASTER_TO_ALL_SLAVES, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 255, i32 0
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 1
  %66 = call i32 @router_send_frame(i32 %60, i32* %61, i64 %65)
  br label %67

67:                                               ; preds = %46, %32
  br label %116

68:                                               ; preds = %26
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %112, %68
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @NUM_SLAVES, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %115

76:                                               ; preds = %72
  %77 = load i32*, i32** %6, align 8
  store i32* %77, i32** %8, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @LOCAL_OBJECT_EXTRA, align 8
  %82 = add i64 %80, %81
  %83 = load i32*, i32** %8, align 8
  %84 = call i64 @triple_buffer_read_internal(i64 %82, i32* %83)
  %85 = inttoptr i64 %84 to i32*
  store i32* %85, i32** %9, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %104

88:                                               ; preds = %76
  %89 = load i32, i32* %1, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  store i32 %89, i32* %94, align 4
  %95 = load i32, i32* %7, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32*, i32** %9, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = add i64 %101, 1
  %103 = call i32 @router_send_frame(i32 %97, i32* %98, i64 %102)
  br label %104

104:                                              ; preds = %88, %76
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @LOCAL_OBJECT_SIZE(i64 %107)
  %109 = load i32*, i32** %6, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32* %111, i32** %6, align 8
  br label %112

112:                                              ; preds = %104
  %113 = load i32, i32* %7, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %72

115:                                              ; preds = %72
  br label %116

116:                                              ; preds = %115, %67
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %1, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %1, align 4
  br label %11

120:                                              ; preds = %11
  ret void
}

declare dso_local i64 @triple_buffer_read_internal(i64, i32*) #1

declare dso_local i32 @router_send_frame(i32, i32*, i64) #1

declare dso_local i32 @LOCAL_OBJECT_SIZE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
