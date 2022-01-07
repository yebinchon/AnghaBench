; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/z80/extr_expressions.c_rd_number.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/z80/extr_expressions.c_rd_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@__const.rd_number.num = private unnamed_addr constant [37 x i8] c"0123456789abcdefghijklmnopqrstuvwxyz\00", align 16
@verbose = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"%5d (0x%04x): Starting to read number of base %d(string=%s).\0A\00", align 1
@stack = common dso_local global %struct.TYPE_2__* null, align 8
@sp = common dso_local global i64 0, align 8
@addr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"%5d (0x%04x): Digit found:%1x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"%5d (0x%04x): rd_number returned %d (%04x).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**, i32)* @rd_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rd_number(i8** %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [37 x i8], align 16
  store i8** %0, i8*** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = bitcast [37 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 getelementptr inbounds ([37 x i8], [37 x i8]* @__const.rd_number.num, i32 0, i32 0), i64 37, i1 false)
  %12 = load i32, i32* @verbose, align 4
  %13 = icmp sge i32 %12, 6
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = load i32, i32* @stderr, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stack, align 8
  %17 = load i64, i64* @sp, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @addr, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i8**, i8*** %4, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i32, i8*, i32, i32, i32, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i32 %22, i8* %24)
  br label %26

26:                                               ; preds = %14, %3
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [37 x i8], [37 x i8]* %10, i64 0, i64 %28
  store i8 0, i8* %29, align 1
  %30 = load i8**, i8*** %4, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* @delspc(i8* %31)
  %33 = load i8**, i8*** %4, align 8
  store i8* %32, i8** %33, align 8
  br label %34

34:                                               ; preds = %69, %26
  %35 = load i8**, i8*** %4, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = getelementptr inbounds [37 x i8], [37 x i8]* %10, i64 0, i64 0
  %42 = load i8**, i8*** %4, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = load i8, i8* %43, align 1
  %45 = call i32 @tolower(i8 zeroext %44)
  %46 = call i8* @strchr(i8* %41, i32 %45)
  store i8* %46, i8** %9, align 8
  %47 = icmp ne i8* %46, null
  br label %48

48:                                               ; preds = %40, %34
  %49 = phi i1 [ false, %34 ], [ %47, %40 ]
  br i1 %49, label %50, label %78

50:                                               ; preds = %48
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds [37 x i8], [37 x i8]* %10, i64 0, i64 0
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* @verbose, align 4
  %58 = icmp sge i32 %57, 7
  br i1 %58, label %59, label %69

59:                                               ; preds = %50
  %60 = load i32, i32* @stderr, align 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stack, align 8
  %62 = load i64, i64* @sp, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @addr, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 (i32, i8*, i32, i32, i32, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %59, %50
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %6, align 4
  %72 = mul nsw i32 %70, %71
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %72, %73
  store i32 %74, i32* %7, align 4
  %75 = load i8**, i8*** %4, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %75, align 8
  br label %34

78:                                               ; preds = %48
  %79 = load i8**, i8*** %5, align 8
  %80 = icmp ne i8** %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i8**, i8*** %4, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = load i8**, i8*** %5, align 8
  store i8* %83, i8** %84, align 8
  br label %85

85:                                               ; preds = %81, %78
  %86 = load i8**, i8*** %4, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = call i8* @delspc(i8* %87)
  %89 = load i8**, i8*** %4, align 8
  store i8* %88, i8** %89, align 8
  %90 = load i32, i32* @verbose, align 4
  %91 = icmp sge i32 %90, 7
  br i1 %91, label %92, label %103

92:                                               ; preds = %85
  %93 = load i32, i32* @stderr, align 4
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stack, align 8
  %95 = load i64, i64* @sp, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @addr, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 (i32, i8*, i32, i32, i32, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %98, i32 %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %92, %85
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, ...) #2

declare dso_local i8* @delspc(i8*) #2

declare dso_local i8* @strchr(i8*, i32) #2

declare dso_local i32 @tolower(i8 zeroext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
