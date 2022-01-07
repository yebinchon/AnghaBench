; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/extr_grubfs.c_read_foo.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/extr_grubfs.c_read_foo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 (i32, i64, i32*, i32)* }
%struct.grub_disk = type { %struct.TYPE_3__* }

@.str = private unnamed_addr constant [15 x i8] c"oops. no disk\0A\00", align 1
@bio = common dso_local global %struct.TYPE_3__* null, align 8
@delta = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_disk*, i32, i32, i8*)* @read_foo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_foo(%struct.grub_disk* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.grub_disk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  store %struct.grub_disk* %0, %struct.grub_disk** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load %struct.grub_disk*, %struct.grub_disk** %6, align 8
  %13 = icmp ne %struct.grub_disk* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = call i32 @eprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %44

16:                                               ; preds = %4
  store i32 512, i32* %10, align 4
  %17 = load %struct.grub_disk*, %struct.grub_disk** %6, align 8
  %18 = getelementptr inbounds %struct.grub_disk, %struct.grub_disk* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %11, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bio, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bio, align 8
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %11, align 8
  br label %24

24:                                               ; preds = %22, %16
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32 (i32, i64, i32*, i32)*, i32 (i32, i64, i32*, i32)** %26, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* @delta, align 8
  %32 = load i32, i32* %7, align 4
  %33 = mul nsw i32 512, %32
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %31, %34
  %36 = load i8*, i8** %9, align 8
  %37 = bitcast i8* %36 to i32*
  %38 = load i32, i32* %8, align 4
  %39 = mul nsw i32 %38, 512
  %40 = call i32 %27(i32 %30, i64 %35, i32* %37, i32 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %24, %14
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @eprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
