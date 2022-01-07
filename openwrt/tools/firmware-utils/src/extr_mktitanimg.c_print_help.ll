; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mktitanimg.c_print_help.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mktitanimg.c_print_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@print_help.help_page = internal global [6 x i8*] [i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [46 x i8] c"mknspimg version 1.0, Texas Instruments, 2004\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Syntax:\00", align 1
@.str.2 = private unnamed_addr constant [122 x i8] c"        mknspimg -o outfile -i image1 image2 -a align1 align2 [-v] [-b] [-p prod_id] [-r rel_id] [-s rel_name] [-f flags]\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Example:\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"        mknspimg -o nsp_image.bin -i kernel.bin files.img -a 0 4096\00", align 1
@.str.5 = private unnamed_addr constant [98 x i8] c"This generates 'nsp_image.bin' from two input files aligning first to 0 and second to 4096 bytes.\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_help() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 6, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %13, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [6 x i8*], [6 x i8*]* @print_help.help_page, i64 0, i64 %9
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %7
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %3

16:                                               ; preds = %3
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
