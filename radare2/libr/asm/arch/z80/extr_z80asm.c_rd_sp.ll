; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/z80/extr_z80asm.c_rd_sp.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/z80/extr_z80asm.c_rd_sp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"hl\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ix\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"iy\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"(*)\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@readword = common dso_local global i8* null, align 8
@indexed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @rd_sp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rd_sp(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca [6 x i8*], align 16
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  %7 = bitcast [6 x i8*]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 48, i1 false)
  %8 = bitcast i8* %7 to [6 x i8*]*
  %9 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8** %9, align 16
  %10 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8** %10, align 8
  %11 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i32 0, i32 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8** %11, align 16
  %12 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i32 0, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8** %12, align 8
  %13 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i32 0, i32 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8** %13, align 16
  %14 = load i8**, i8*** %3, align 8
  %15 = getelementptr inbounds [6 x i8*], [6 x i8*]* %5, i64 0, i64 0
  %16 = call i32 @indx(i8** %14, i8** %15, i32 0, i8** %6)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp sgt i32 %17, 3
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** @readword, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 4
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 2, i32 0
  store i32 %24, i32* %2, align 4
  br label %34

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = sub nsw i32 %29, 2
  %31 = mul nsw i32 32, %30
  %32 = add nsw i32 221, %31
  store i32 %32, i32* @indexed, align 4
  br label %33

33:                                               ; preds = %28, %25
  store i32 1, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %19
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @indx(i8**, i8**, i32, i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
