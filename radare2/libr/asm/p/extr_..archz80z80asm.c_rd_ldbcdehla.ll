; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archz80z80asm.c_rd_ldbcdehla.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archz80z80asm.c_rd_ldbcdehla.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"( hl )\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"( ix +)\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"( iy +)\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"ixh\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"ixl\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"iyh\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"iyl\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@__const.rd_ldbcdehla.list = private unnamed_addr constant [16 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* null], align 16
@readbyte = common dso_local global i8* null, align 8
@writebyte = common dso_local global i32 0, align 4
@indexed = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [32 x i8] c"illegal use of index registers\0A\00", align 1
@indexjmp = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @rd_ldbcdehla to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rd_ldbcdehla(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca [16 x i8*], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %8 = bitcast [16 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([16 x i8*]* @__const.rd_ldbcdehla.list to i8*), i64 128, i1 false)
  %9 = load i8**, i8*** %3, align 8
  %10 = getelementptr inbounds [16 x i8*], [16 x i8*]* %5, i64 0, i64 0
  %11 = call i32 @indx(i8** %9, i8** %10, i32 0, i8** %6)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 15
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** @readbyte, align 8
  store i32 1, i32* @writebyte, align 4
  store i32 7, i32* %2, align 4
  br label %55

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = icmp sgt i32 %17, 10
  br i1 %18, label %19, label %38

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = icmp sgt i32 %20, 12
  %22 = zext i1 %21 to i32
  %23 = mul nsw i32 32, %22
  %24 = add nsw i32 221, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @indexed, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load i32, i32* @indexed, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @eprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %55

33:                                               ; preds = %27, %19
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* @indexed, align 4
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, 1
  %37 = sub nsw i32 6, %36
  store i32 %37, i32* %2, align 4
  br label %55

38:                                               ; preds = %16
  %39 = load i32, i32* %4, align 4
  %40 = icmp sgt i32 %39, 8
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load i32, i32* @indexed, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 @eprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %55

46:                                               ; preds = %41
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 10
  %49 = zext i1 %48 to i32
  %50 = mul nsw i32 32, %49
  %51 = add nsw i32 221, %50
  store i32 %51, i32* @indexed, align 4
  %52 = load i8*, i8** %6, align 8
  store i8* %52, i8** @indexjmp, align 8
  store i32 7, i32* %2, align 4
  br label %55

53:                                               ; preds = %38
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %46, %44, %33, %31, %14
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @indx(i8**, i8**, i32, i8**) #2

declare dso_local i32 @eprintf(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
