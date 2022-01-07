; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_ass_mp.c_mp_ass_init.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_ass_mp.c_mp_ass_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_global = type { i32 }
%struct.mp_log = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"fonts\00", align 1
@message_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @mp_ass_init(%struct.mpv_global* %0, %struct.mp_log* %1) #0 {
  %3 = alloca %struct.mpv_global*, align 8
  %4 = alloca %struct.mp_log*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct.mpv_global* %0, %struct.mpv_global** %3, align 8
  store %struct.mp_log* %1, %struct.mp_log** %4, align 8
  %7 = load %struct.mpv_global*, %struct.mpv_global** %3, align 8
  %8 = call i8* @mp_find_config_file(i32* null, %struct.mpv_global* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %5, align 8
  %9 = call i32* (...) @ass_library_init()
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 (...) @abort() #3
  unreachable

14:                                               ; preds = %2
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* @message_callback, align 4
  %17 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %18 = call i32 @ass_set_message_cb(i32* %15, i32 %16, %struct.mp_log* %17)
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load i32*, i32** %6, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @ass_set_fonts_dir(i32* %22, i8* %23)
  br label %25

25:                                               ; preds = %21, %14
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @talloc_free(i8* %26)
  %28 = load i32*, i32** %6, align 8
  ret i32* %28
}

declare dso_local i8* @mp_find_config_file(i32*, %struct.mpv_global*, i8*) #1

declare dso_local i32* @ass_library_init(...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @ass_set_message_cb(i32*, i32, %struct.mp_log*) #1

declare dso_local i32 @ass_set_fonts_dir(i32*, i8*) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
