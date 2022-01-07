; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_vfs.c_vfs_getc.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_vfs.c_vfs_getc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"getc errno %i\0A\00", align 1
@VFS_EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_getc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8 -1, i8* %4, align 1
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @vfs_eof(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @vfs_read(i32 %10, i8* %4, i32 1)
  %12 = icmp ne i32 1, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @vfs_ferrno(i32 %14)
  %16 = call i32 @NODE_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @VFS_EOF, align 4
  store i32 %17, i32* %2, align 4
  br label %23

18:                                               ; preds = %9
  %19 = load i8, i8* %4, align 1
  %20 = zext i8 %19 to i32
  store i32 %20, i32* %2, align 4
  br label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @VFS_EOF, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %21, %18, %13
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @vfs_eof(i32) #1

declare dso_local i32 @vfs_read(i32, i8*, i32) #1

declare dso_local i32 @NODE_DBG(i8*, i32) #1

declare dso_local i32 @vfs_ferrno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
