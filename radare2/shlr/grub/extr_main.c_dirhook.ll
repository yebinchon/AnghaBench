; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/extr_main.c_dirhook.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/extr_main.c_dirhook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_dirhook_info = type { i32, i64 }

@.str = private unnamed_addr constant [21 x i8] c"DIRFILE: %c (%d) %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dirhook(i8* %0, %struct.grub_dirhook_info* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.grub_dirhook_info*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.grub_dirhook_info* %1, %struct.grub_dirhook_info** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.grub_dirhook_info*, %struct.grub_dirhook_info** %5, align 8
  %8 = getelementptr inbounds %struct.grub_dirhook_info, %struct.grub_dirhook_info* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 100, i32 102
  %13 = trunc i32 %12 to i8
  %14 = load %struct.grub_dirhook_info*, %struct.grub_dirhook_info** %5, align 8
  %15 = getelementptr inbounds %struct.grub_dirhook_info, %struct.grub_dirhook_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8 signext %13, i32 %16, i8* %17)
  ret i32 0
}

declare dso_local i32 @printf(i8*, i8 signext, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
