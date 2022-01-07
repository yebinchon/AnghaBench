; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_sizehint.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_sizehint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_x11_state*, %struct.mp_vo_opts* }
%struct.vo_x11_state = type { i32, i32, i64 }
%struct.mp_vo_opts = type { i64, i64, i64, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.mp_rect = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, %struct.TYPE_10__, i32, %struct.TYPE_9__, i64, i64, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@PSize = common dso_local global i32 0, align 4
@PPosition = common dso_local global i32 0, align 4
@PAspect = common dso_local global i32 0, align 4
@PMinSize = common dso_local global i32 0, align 4
@PWinGravity = common dso_local global i32 0, align 4
@CenterGravity = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, i64, i32)* @vo_x11_sizehint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vo_x11_sizehint(%struct.vo* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.mp_rect, align 4
  %5 = alloca %struct.vo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mp_vo_opts*, align 8
  %8 = alloca %struct.vo_x11_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = bitcast %struct.mp_rect* %4 to i64*
  store i64 %1, i64* %11, align 4
  store %struct.vo* %0, %struct.vo** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.vo*, %struct.vo** %5, align 8
  %13 = getelementptr inbounds %struct.vo, %struct.vo* %12, i32 0, i32 1
  %14 = load %struct.mp_vo_opts*, %struct.mp_vo_opts** %13, align 8
  store %struct.mp_vo_opts* %14, %struct.mp_vo_opts** %7, align 8
  %15 = load %struct.vo*, %struct.vo** %5, align 8
  %16 = getelementptr inbounds %struct.vo, %struct.vo* %15, i32 0, i32 0
  %17 = load %struct.vo_x11_state*, %struct.vo_x11_state** %16, align 8
  store %struct.vo_x11_state* %17, %struct.vo_x11_state** %8, align 8
  %18 = load %struct.vo_x11_state*, %struct.vo_x11_state** %8, align 8
  %19 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.vo_x11_state*, %struct.vo_x11_state** %8, align 8
  %24 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %3
  br label %162

28:                                               ; preds = %22
  %29 = load %struct.mp_vo_opts*, %struct.mp_vo_opts** %7, align 8
  %30 = getelementptr inbounds %struct.mp_vo_opts, %struct.mp_vo_opts* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %28
  %35 = load %struct.mp_vo_opts*, %struct.mp_vo_opts** %7, align 8
  %36 = getelementptr inbounds %struct.mp_vo_opts, %struct.mp_vo_opts* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %34
  %40 = load %struct.mp_vo_opts*, %struct.mp_vo_opts** %7, align 8
  %41 = getelementptr inbounds %struct.mp_vo_opts, %struct.mp_vo_opts* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %39
  %45 = load %struct.vo_x11_state*, %struct.vo_x11_state** %8, align 8
  %46 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %49, %44, %39, %34, %28
  %53 = phi i1 [ true, %44 ], [ true, %39 ], [ true, %34 ], [ true, %28 ], [ %51, %49 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %9, align 4
  %55 = call %struct.TYPE_11__* (...) @XAllocSizeHints()
  store %struct.TYPE_11__* %55, %struct.TYPE_11__** %10, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %57 = icmp ne %struct.TYPE_11__* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  br label %162

59:                                               ; preds = %52
  %60 = load i32, i32* @PSize, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @PPosition, align 4
  br label %66

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %63
  %67 = phi i32 [ %64, %63 ], [ 0, %65 ]
  %68 = or i32 %60, %67
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %4, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 11
  store i32 %74, i32* %76, align 4
  %77 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %4, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 10
  store i32 %78, i32* %80, align 8
  %81 = bitcast %struct.mp_rect* %4 to i64*
  %82 = load i64, i64* %81, align 4
  %83 = call i32 @RC_W(i64 %82)
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 4
  %86 = bitcast %struct.mp_rect* %4 to i64*
  %87 = load i64, i64* %86, align 4
  %88 = call i32 @RC_H(i64 %87)
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 9
  store i64 0, i64* %92, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 8
  store i64 0, i64* %94, align 8
  %95 = load %struct.mp_vo_opts*, %struct.mp_vo_opts** %7, align 8
  %96 = getelementptr inbounds %struct.mp_vo_opts, %struct.mp_vo_opts* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %134

99:                                               ; preds = %66
  %100 = load %struct.mp_vo_opts*, %struct.mp_vo_opts** %7, align 8
  %101 = getelementptr inbounds %struct.mp_vo_opts, %struct.mp_vo_opts* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %134

104:                                              ; preds = %99
  %105 = load i32, i32* @PAspect, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 7
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 4
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 7
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  store i32 %124, i32* %127, align 4
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  store i32 %130, i32* %133, align 4
  br label %134

134:                                              ; preds = %104, %99, %66
  %135 = load i32, i32* @PMinSize, align 4
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 2
  store i32 4, i32* %141, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 1
  store i32 4, i32* %143, align 4
  %144 = load i32, i32* @PWinGravity, align 4
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  %149 = load i32, i32* @CenterGravity, align 4
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 4
  %152 = load %struct.vo_x11_state*, %struct.vo_x11_state** %8, align 8
  %153 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.vo_x11_state*, %struct.vo_x11_state** %8, align 8
  %156 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %159 = call i32 @XSetWMNormalHints(i32 %154, i32 %157, %struct.TYPE_11__* %158)
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %161 = call i32 @XFree(%struct.TYPE_11__* %160)
  br label %162

162:                                              ; preds = %134, %58, %27
  ret void
}

declare dso_local %struct.TYPE_11__* @XAllocSizeHints(...) #1

declare dso_local i32 @RC_W(i64) #1

declare dso_local i32 @RC_H(i64) #1

declare dso_local i32 @XSetWMNormalHints(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @XFree(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
