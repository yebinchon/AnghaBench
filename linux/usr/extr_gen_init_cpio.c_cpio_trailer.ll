; ModuleID = '/home/carl/AnghaBench/linux/usr/extr_gen_init_cpio.c_cpio_trailer.c'
source_filename = "/home/carl/AnghaBench/linux/usr/extr_gen_init_cpio.c_cpio_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.cpio_trailer.name = private unnamed_addr constant [11 x i8] c"TRAILER!!!\00", align 1
@.str = private unnamed_addr constant [58 x i8] c"%s%08X%08X%08lX%08lX%08X%08lX%08X%08X%08X%08X%08X%08X%08X\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"070701\00", align 1
@offset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cpio_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpio_trailer() #0 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca [11 x i8], align 1
  %3 = bitcast [11 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.cpio_trailer.name, i32 0, i32 0), i64 11, i1 false)
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %5 = getelementptr inbounds [11 x i8], [11 x i8]* %2, i64 0, i64 0
  %6 = call i64 @strlen(i8* %5)
  %7 = trunc i64 %6 to i32
  %8 = add i32 %7, 1
  %9 = call i32 @sprintf(i8* %4, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0, i64 0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %8, i32 0)
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %11 = call i32 @push_hdr(i8* %10)
  %12 = getelementptr inbounds [11 x i8], [11 x i8]* %2, i64 0, i64 0
  %13 = call i32 @push_rest(i8* %12)
  br label %14

14:                                               ; preds = %18, %0
  %15 = load i32, i32* @offset, align 4
  %16 = srem i32 %15, 512
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = call i32 @putchar(i32 0)
  %20 = load i32, i32* @offset, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @offset, align 4
  br label %14

22:                                               ; preds = %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32, i32, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @push_hdr(i8*) #2

declare dso_local i32 @push_rest(i8*) #2

declare dso_local i32 @putchar(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
