; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/z80/extr_z80asm.c_rd_ld.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/z80/extr_z80asm.c_rd_ld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ixh\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ixl\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"iyh\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"iyl\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"bc\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"de\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"hl\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"sp\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"ix\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"iy\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"( hl )\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"( bc )\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"( de )\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"( ix +)\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"(iy +)\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"(*)\00", align 1
@__const.rd_ld.list = private unnamed_addr constant [26 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* null], align 16
@indexed = common dso_local global i32 0, align 4
@indexjmp = common dso_local global i8* null, align 8
@readword = common dso_local global i8* null, align 8
@ldH = common dso_local global i32 0, align 4
@ldHL = common dso_local global i32 0, align 4
@ldIX = common dso_local global i32 0, align 4
@ldIY = common dso_local global i32 0, align 4
@ld_HL = common dso_local global i32 0, align 4
@ld_IX = common dso_local global i32 0, align 4
@ld_IY = common dso_local global i32 0, align 4
@ld_NN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @rd_ld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rd_ld(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca [26 x i8*], align 16
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  %7 = bitcast [26 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([26 x i8*]* @__const.rd_ld.list to i8*), i64 208, i1 false)
  %8 = load i8**, i8*** %3, align 8
  %9 = getelementptr inbounds [26 x i8*], [26 x i8*]* %5, i64 0, i64 0
  %10 = call i32 @indx(i8** %8, i8** %9, i32 1, i8** %6)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp sle i32 %15, 2
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  store i32 221, i32* @indexed, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 2
  %20 = zext i1 %19 to i32
  %21 = add nsw i32 11, %20
  store i32 %21, i32* %2, align 4
  br label %62

22:                                               ; preds = %14
  %23 = load i32, i32* %4, align 4
  %24 = icmp sle i32 %23, 4
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  store i32 253, i32* @indexed, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 4
  %28 = zext i1 %27 to i32
  %29 = add nsw i32 11, %28
  store i32 %29, i32* %2, align 4
  br label %62

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  %32 = sub nsw i32 %31, 4
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 5
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, 6
  br i1 %37, label %38, label %43

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 5
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 221, i32 253
  store i32 %42, i32* @indexed, align 4
  store i32 3, i32* %2, align 4
  br label %62

43:                                               ; preds = %35
  %44 = load i32, i32* %4, align 4
  %45 = icmp eq i32 %44, 19
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 20
  br i1 %48, label %49, label %55

49:                                               ; preds = %46, %43
  %50 = load i8*, i8** %6, align 8
  store i8* %50, i8** @indexjmp, align 8
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %51, 19
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 221, i32 253
  store i32 %54, i32* @indexed, align 4
  store i32 13, i32* %2, align 4
  br label %62

55:                                               ; preds = %46
  %56 = load i32, i32* %4, align 4
  %57 = icmp eq i32 %56, 21
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i8*, i8** %6, align 8
  store i8* %59, i8** @readword, align 8
  br label %60

60:                                               ; preds = %58, %55
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %49, %38, %25, %17, %13
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @indx(i8**, i8**, i32, i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
