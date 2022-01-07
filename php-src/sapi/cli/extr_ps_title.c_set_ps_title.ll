; ModuleID = '/home/carl/AnghaBench/php-src/sapi/cli/extr_ps_title.c_set_ps_title.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/cli/extr_ps_title.c_set_ps_title.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8* }

@PS_TITLE_SUCCESS = common dso_local global i32 0, align 4
@ps_buffer = common dso_local global i8* null, align 8
@ps_buffer_size = common dso_local global i32 0, align 4
@ps_buffer_cur_len = common dso_local global i32 0, align 4
@PSTAT_SETCMD = common dso_local global i32 0, align 4
@PS_PADDING = common dso_local global i32 0, align 4
@PS_STRINGS = common dso_local global %struct.TYPE_2__* null, align 8
@PS_TITLE_WINDOWS_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_ps_title(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = call i32 (...) @is_ps_title_available()
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @PS_TITLE_SUCCESS, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %24

11:                                               ; preds = %1
  %12 = load i8*, i8** @ps_buffer, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* @ps_buffer_size, align 4
  %15 = call i32 @strncpy(i8* %12, i8* %13, i32 %14)
  %16 = load i8*, i8** @ps_buffer, align 8
  %17 = load i32, i32* @ps_buffer_size, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  store i8 0, i8* %20, align 1
  %21 = load i8*, i8** @ps_buffer, align 8
  %22 = call i32 @strlen(i8* %21)
  store i32 %22, i32* @ps_buffer_cur_len, align 4
  %23 = load i32, i32* @PS_TITLE_SUCCESS, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %11, %9
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @is_ps_title_available(...) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
