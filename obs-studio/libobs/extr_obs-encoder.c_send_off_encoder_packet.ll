; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_send_off_encoder_packet.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_send_off_encoder_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i8*, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i64, %struct.encoder_callback* }
%struct.encoder_callback = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.encoder_packet = type { i8*, i8* }

@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error encoding with encoder '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_off_encoder_packet(%struct.TYPE_11__* %0, i32 %1, i32 %2, %struct.encoder_packet* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.encoder_packet*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.encoder_callback*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.encoder_packet* %3, %struct.encoder_packet** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* @LOG_ERROR, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @blog(i32 %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = call i32 @full_stop(%struct.TYPE_11__* %20)
  br label %107

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %107

25:                                               ; preds = %22
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = load %struct.encoder_packet*, %struct.encoder_packet** %8, align 8
  %32 = call i8* @packet_dts_usec(%struct.encoder_packet* %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  br label %37

37:                                               ; preds = %30, %25
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = sdiv i32 %40, 1000
  %42 = load %struct.encoder_packet*, %struct.encoder_packet** %8, align 8
  %43 = call i8* @packet_dts_usec(%struct.encoder_packet* %42)
  %44 = sext i32 %41 to i64
  %45 = getelementptr i8, i8* %43, i64 %44
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = ptrtoint i8* %45 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = inttoptr i64 %51 to i8*
  %53 = load %struct.encoder_packet*, %struct.encoder_packet** %8, align 8
  %54 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.encoder_packet*, %struct.encoder_packet** %8, align 8
  %56 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.encoder_packet*, %struct.encoder_packet** %8, align 8
  %59 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = call i32 @pthread_mutex_lock(i32* %62)
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sdiv i32 %67, 1000
  %69 = load %struct.encoder_packet*, %struct.encoder_packet** %8, align 8
  %70 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = sext i32 %68 to i64
  %73 = getelementptr i8, i8* %71, i64 %72
  store i8* %73, i8** %70, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = call i32 @pthread_mutex_unlock(i32* %76)
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 3
  %80 = call i32 @pthread_mutex_lock(i32* %79)
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %9, align 8
  br label %85

85:                                               ; preds = %100, %37
  %86 = load i64, i64* %9, align 8
  %87 = icmp ugt i64 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %85
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load %struct.encoder_callback*, %struct.encoder_callback** %91, align 8
  %93 = load i64, i64* %9, align 8
  %94 = sub i64 %93, 1
  %95 = getelementptr inbounds %struct.encoder_callback, %struct.encoder_callback* %92, i64 %94
  store %struct.encoder_callback* %95, %struct.encoder_callback** %10, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %97 = load %struct.encoder_callback*, %struct.encoder_callback** %10, align 8
  %98 = load %struct.encoder_packet*, %struct.encoder_packet** %8, align 8
  %99 = call i32 @send_packet(%struct.TYPE_11__* %96, %struct.encoder_callback* %97, %struct.encoder_packet* %98)
  br label %100

100:                                              ; preds = %88
  %101 = load i64, i64* %9, align 8
  %102 = add i64 %101, -1
  store i64 %102, i64* %9, align 8
  br label %85

103:                                              ; preds = %85
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 3
  %106 = call i32 @pthread_mutex_unlock(i32* %105)
  br label %107

107:                                              ; preds = %13, %103, %22
  ret void
}

declare dso_local i32 @blog(i32, i8*, i32) #1

declare dso_local i32 @full_stop(%struct.TYPE_11__*) #1

declare dso_local i8* @packet_dts_usec(%struct.encoder_packet*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @send_packet(%struct.TYPE_11__*, %struct.encoder_callback*, %struct.encoder_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
