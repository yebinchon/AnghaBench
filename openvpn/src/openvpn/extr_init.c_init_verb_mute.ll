; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_init_verb_mute.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_init_verb_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@IVM_LEVEL_1 = common dso_local global i32 0, align 4
@D_LINK_ERRORS = common dso_local global i32 0, align 4
@D_READ_WRITE = common dso_local global i32 0, align 4
@SDL_CONSTRAIN = common dso_local global i32 0, align 4
@IVM_LEVEL_2 = common dso_local global i32 0, align 4
@D_LOG_RW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_verb_mute(%struct.context* %0, i32 %1) #0 {
  %3 = alloca %struct.context*, align 8
  %4 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @IVM_LEVEL_1, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load i32, i32* @D_LINK_ERRORS, align 4
  %11 = load i32, i32* @D_READ_WRITE, align 4
  %12 = call i32 @set_check_status(i32 %10, i32 %11)
  %13 = load %struct.context*, %struct.context** %3, align 8
  %14 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SDL_CONSTRAIN, align 4
  %18 = call i32 @set_debug_level(i32 %16, i32 %17)
  %19 = load %struct.context*, %struct.context** %3, align 8
  %20 = getelementptr inbounds %struct.context, %struct.context* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @set_mute_cutoff(i32 %22)
  br label %24

24:                                               ; preds = %9, %2
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @IVM_LEVEL_2, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %24
  %30 = load i64, i64* @D_LOG_RW, align 8
  %31 = call i64 @check_debug_level(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i64, i64* @D_LOG_RW, align 8
  %35 = add nsw i64 %34, 1
  %36 = call i64 @check_debug_level(i64 %35)
  %37 = icmp ne i64 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %33, %29
  %40 = phi i1 [ false, %29 ], [ %38, %33 ]
  %41 = zext i1 %40 to i32
  %42 = load %struct.context*, %struct.context** %3, align 8
  %43 = getelementptr inbounds %struct.context, %struct.context* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  br label %45

45:                                               ; preds = %39, %24
  ret void
}

declare dso_local i32 @set_check_status(i32, i32) #1

declare dso_local i32 @set_debug_level(i32, i32) #1

declare dso_local i32 @set_mute_cutoff(i32) #1

declare dso_local i64 @check_debug_level(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
