; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archz80z80asm.c_rd_r_rr.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archz80z80asm.c_rd_r_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"iy\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ix\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"sp\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"hl\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"de\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"bc\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"( hl )\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"( ix +)\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"( iy +)\00", align 1
@__const.rd_r_rr.list = private unnamed_addr constant [18 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* null], align 16
@indexjmp = common dso_local global i32 0, align 4
@indexed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @rd_r_rr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rd_r_rr(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca [18 x i8*], align 16
  store i8** %0, i8*** %3, align 8
  %6 = bitcast [18 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([18 x i8*]* @__const.rd_r_rr.list to i8*), i64 144, i1 false)
  %7 = load i8**, i8*** %3, align 8
  %8 = getelementptr inbounds [18 x i8*], [18 x i8*]* %5, i64 0, i64 0
  %9 = call i32 @indx(i8** %7, i8** %8, i32 1, i32* @indexjmp)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 16
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = icmp sgt i32 %17, 2
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = sub nsw i32 7, %20
  store i32 %21, i32* %2, align 4
  br label %35

22:                                               ; preds = %16, %13
  %23 = load i32, i32* %4, align 4
  %24 = icmp sgt i32 %23, 15
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = sub nsw i32 %26, 16
  %28 = mul nsw i32 %27, 32
  %29 = add nsw i32 221, %28
  store i32 %29, i32* @indexed, align 4
  store i32 -7, i32* %2, align 4
  br label %35

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  %32 = sub nsw i32 2, %31
  %33 = mul nsw i32 %32, 32
  %34 = add nsw i32 221, %33
  store i32 %34, i32* @indexed, align 4
  store i32 3, i32* %2, align 4
  br label %35

35:                                               ; preds = %30, %25, %19, %12
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @indx(i8**, i8**, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
