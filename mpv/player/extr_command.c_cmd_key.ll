; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_key.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd_ctx = type { i32, %struct.TYPE_4__*, i64, %struct.MPContext* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.MPContext = type { i32 }

@MP_KEY_STATE_UP = common dso_local global i32 0, align 4
@MP_INPUT_RELEASE_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s is not a valid input name.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cmd_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_key(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mp_cmd_ctx*, align 8
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.mp_cmd_ctx*
  store %struct.mp_cmd_ctx* %9, %struct.mp_cmd_ctx** %3, align 8
  %10 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %10, i32 0, i32 3
  %12 = load %struct.MPContext*, %struct.MPContext** %11, align 8
  store %struct.MPContext* %12, %struct.MPContext** %4, align 8
  %13 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %1
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @MP_KEY_STATE_UP, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %36 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MP_INPUT_RELEASE_ALL, align 4
  %39 = call i32 @mp_input_put_key_artificial(i32 %37, i32 %38)
  br label %59

40:                                               ; preds = %30, %1
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @mp_input_get_key_from_name(i8* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @MP_ERR(%struct.MPContext* %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %47)
  %49 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %50 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  br label %59

51:                                               ; preds = %40
  %52 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %53 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @mp_input_put_key_artificial(i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %45, %51, %34
  ret void
}

declare dso_local i32 @mp_input_put_key_artificial(i32, i32) #1

declare dso_local i32 @mp_input_get_key_from_name(i8*) #1

declare dso_local i32 @MP_ERR(%struct.MPContext*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
