; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archz80expressions.c_rd_label.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archz80expressions.c_rd_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.label = type { i32 }

@verbose = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"%5d (0x%04x): Starting to read label (string=%s).\0A\00", align 1
@stack = common dso_local global %struct.TYPE_2__* null, align 8
@sp = common dso_local global i64 0, align 8
@addr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"using undefined label %.*s\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"rd_label returns invalid value\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"rd_label returns valid value 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, %struct.label**, i32, i32)* @rd_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rd_label(i8** %0, i32* %1, %struct.label** %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.label**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.label*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8** %0, i8*** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.label** %2, %struct.label*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.label* null, %struct.label** %12, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32*, i32** %8, align 8
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %17, %5
  %20 = load %struct.label**, %struct.label*** %9, align 8
  %21 = icmp ne %struct.label** %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load %struct.label**, %struct.label*** %9, align 8
  store %struct.label* null, %struct.label** %23, align 8
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i32, i32* @verbose, align 4
  %26 = icmp sge i32 %25, 6
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load i32, i32* @stderr, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stack, align 8
  %30 = load i64, i64* @sp, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @addr, align 4
  %35 = load i8**, i8*** %7, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, i8* %36)
  br label %38

38:                                               ; preds = %27, %24
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %13, align 4
  br label %40

40:                                               ; preds = %70, %38
  %41 = load i32, i32* %13, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %73

43:                                               ; preds = %40
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stack, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i8**, i8*** %7, align 8
  %51 = load i8**, i8*** %7, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 46
  br i1 %55, label %56, label %63

56:                                               ; preds = %43
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* @sp, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load %struct.label**, %struct.label*** %9, align 8
  br label %64

63:                                               ; preds = %56, %43
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi %struct.label** [ %62, %61 ], [ null, %63 ]
  %66 = call i64 @check_label(i32 %49, i8** %50, %struct.label** %12, %struct.label** %65, i32 0)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %73

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %13, align 4
  br label %40

73:                                               ; preds = %68, %40
  %74 = load i32, i32* %13, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %104

76:                                               ; preds = %73
  %77 = load i8**, i8*** %7, align 8
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %14, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %94, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %81
  %85 = load i8**, i8*** %7, align 8
  %86 = load i8*, i8** %85, align 8
  %87 = load i8*, i8** %14, align 8
  %88 = ptrtoint i8* %86 to i64
  %89 = ptrtoint i8* %87 to i64
  %90 = sub i64 %88, %89
  %91 = trunc i64 %90 to i32
  %92 = load i8*, i8** %14, align 8
  %93 = call i32 @printerr(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %91, i8* %92)
  br label %94

94:                                               ; preds = %84, %81, %76
  %95 = load i32, i32* @verbose, align 4
  %96 = icmp sge i32 %95, 7
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* @stderr, align 4
  %99 = call i32 (i32, i8*, ...) @fprintf(i32 %98, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %94
  %101 = load %struct.label*, %struct.label** %12, align 8
  %102 = icmp ne %struct.label* %101, null
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %6, align 4
  br label %122

104:                                              ; preds = %73
  %105 = load i32*, i32** %8, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i32*, i32** %8, align 8
  store i32 1, i32* %108, align 4
  br label %109

109:                                              ; preds = %107, %104
  %110 = load i32, i32* @verbose, align 4
  %111 = icmp sge i32 %110, 7
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load i32, i32* @stderr, align 4
  %114 = load %struct.label*, %struct.label** %12, align 8
  %115 = getelementptr inbounds %struct.label, %struct.label* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %113, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %112, %109
  %119 = load %struct.label*, %struct.label** %12, align 8
  %120 = getelementptr inbounds %struct.label, %struct.label* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %118, %100
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @check_label(i32, i8**, %struct.label**, %struct.label**, i32) #1

declare dso_local i32 @printerr(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
