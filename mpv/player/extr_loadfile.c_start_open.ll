; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_loadfile.c_start_open.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_loadfile.c_start_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, i32, i32, i32, %struct.TYPE_2__*, i8*, i8*, i64, i32, i32 }
%struct.TYPE_2__ = type { i8*, i64, i64 }

@open_demux_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*, i8*, i32, i32)* @start_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_open(%struct.MPContext* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.MPContext*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %10 = call i32 @cancel_open(%struct.MPContext* %9)
  %11 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %12 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %19 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %18, i32 0, i32 7
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %26 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %33 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %32, i32 0, i32 8
  %34 = call i32 @atomic_load(i32* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = call i64 @mp_cancel_new(i32* null)
  %40 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %41 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %40, i32 0, i32 7
  store i64 %39, i64* %41, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i8* @talloc_strdup(i32* null, i8* %42)
  %44 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %45 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %44, i32 0, i32 6
  store i8* %43, i8** %45, align 8
  %46 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %47 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %46, i32 0, i32 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i8* @talloc_strdup(i32* null, i8* %50)
  %52 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %53 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %52, i32 0, i32 5
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %56 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %4
  %60 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %61 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %60, i32 0, i32 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %59, %4
  %67 = phi i1 [ false, %4 ], [ %65, %59 ]
  %68 = zext i1 %67 to i32
  %69 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %70 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %72 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %71, i32 0, i32 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %66
  %78 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %79 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %78, i32 0, i32 1
  store i32 0, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %66
  %81 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %82 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %81, i32 0, i32 3
  %83 = load i32, i32* @open_demux_thread, align 4
  %84 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %85 = call i64 @pthread_create(i32* %82, i32* null, i32 %83, %struct.MPContext* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %89 = call i32 @cancel_open(%struct.MPContext* %88)
  br label %93

90:                                               ; preds = %80
  %91 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %92 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  br label %93

93:                                               ; preds = %90, %87
  ret void
}

declare dso_local i32 @cancel_open(%struct.MPContext*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @atomic_load(i32*) #1

declare dso_local i64 @mp_cancel_new(i32*) #1

declare dso_local i8* @talloc_strdup(i32*, i8*) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, %struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
