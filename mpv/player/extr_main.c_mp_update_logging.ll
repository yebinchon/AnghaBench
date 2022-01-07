; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_main.c_mp_update_logging.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_main.c_mp_update_logging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_update_logging(%struct.MPContext* %0, i32 %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %9 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @mp_msg_has_log_file(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %13 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %16 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = call i32 @mp_msg_update_msglevels(i32 %14, %struct.TYPE_2__* %17)
  %19 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %20 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  %24 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %25 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %26 = call i32 @cas_terminal_owner(%struct.MPContext* %24, %struct.MPContext* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %2
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %35 = call i32 @cas_terminal_owner(%struct.MPContext* null, %struct.MPContext* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 (...) @terminal_init()
  store i32 1, i32* %7, align 4
  br label %47

39:                                               ; preds = %33, %30
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = call i32 (...) @terminal_uninit()
  %44 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %45 = call i32 @cas_terminal_owner(%struct.MPContext* %44, %struct.MPContext* null)
  br label %46

46:                                               ; preds = %42, %39
  br label %47

47:                                               ; preds = %46, %37
  br label %48

48:                                               ; preds = %47, %2
  %49 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %50 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @mp_msg_has_log_file(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %59 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @mp_print_version(i32 %60, i32 0)
  br label %62

62:                                               ; preds = %57, %54, %48
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %62
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %65
  %69 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %70 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %77 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @terminal_setup_getch(i32 %78)
  br label %80

80:                                               ; preds = %75, %68, %65, %62
  ret void
}

declare dso_local i32 @mp_msg_has_log_file(i32) #1

declare dso_local i32 @mp_msg_update_msglevels(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @cas_terminal_owner(%struct.MPContext*, %struct.MPContext*) #1

declare dso_local i32 @terminal_init(...) #1

declare dso_local i32 @terminal_uninit(...) #1

declare dso_local i32 @mp_print_version(i32, i32) #1

declare dso_local i32 @terminal_setup_getch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
