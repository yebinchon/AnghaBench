; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_vmenus.c___prompt.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_vmenus.c___prompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @__prompt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__prompt(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [128 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call i32 @r_cons_show_cursor(i32 1)
  %7 = call i32 @r_cons_set_raw(i32 0)
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @r_line_set_prompt(i8* %8)
  %10 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %10, align 16
  %11 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %12 = call i32 @r_cons_fgets(i8* %11, i32 128, i32 0, i32* null)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %15, align 16
  br label %16

16:                                               ; preds = %14, %2
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %18 = call i8* @strdup(i8* %17)
  ret i8* %18
}

declare dso_local i32 @r_cons_show_cursor(i32) #1

declare dso_local i32 @r_cons_set_raw(i32) #1

declare dso_local i32 @r_line_set_prompt(i8*) #1

declare dso_local i32 @r_cons_fgets(i8*, i32, i32, i32*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
