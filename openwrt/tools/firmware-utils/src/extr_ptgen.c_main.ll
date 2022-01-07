; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_ptgen.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_ptgen.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8, i32 }

@.str = private unnamed_addr constant [19 x i8] c"h:s:p:a:t:o:vnl:S:\00", align 1
@optarg = common dso_local global i32 0, align 4
@filename = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@ignore_null_sized_partition = common dso_local global i32 0, align 4
@heads = common dso_local global i64 0, align 8
@sectors = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Too many partitions\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@parts = common dso_local global %struct.TYPE_2__* null, align 8
@active = common dso_local global i32 0, align 4
@kb_align = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8 -125, i8* %6, align 1
  store i32 0, i32* %8, align 4
  store i32 1414682447, i32* %9, align 4
  br label %10

10:                                               ; preds = %81, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %7, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %82

15:                                               ; preds = %10
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %76 [
    i32 111, label %17
    i32 118, label %19
    i32 110, label %22
    i32 104, label %23
    i32 115, label %27
    i32 112, label %31
    i32 116, label %54
    i32 97, label %58
    i32 108, label %68
    i32 83, label %72
    i32 63, label %75
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* @optarg, align 4
  store i32 %18, i32* @filename, align 4
  br label %81

19:                                               ; preds = %15
  %20 = load i32, i32* @verbose, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @verbose, align 4
  br label %81

22:                                               ; preds = %15
  store i32 1, i32* @ignore_null_sized_partition, align 4
  br label %81

23:                                               ; preds = %15
  %24 = load i32, i32* @optarg, align 4
  %25 = call i32 @strtoul(i32 %24, i32* null, i32 0)
  %26 = sext i32 %25 to i64
  store i64 %26, i64* @heads, align 8
  br label %81

27:                                               ; preds = %15
  %28 = load i32, i32* @optarg, align 4
  %29 = call i32 @strtoul(i32 %28, i32* null, i32 0)
  %30 = sext i32 %29 to i64
  store i64 %30, i64* @sectors, align 8
  br label %81

31:                                               ; preds = %15
  %32 = load i32, i32* %8, align 4
  %33 = icmp sgt i32 %32, 3
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EXIT_FAILURE, align 4
  %38 = call i32 @exit(i32 %37) #3
  unreachable

39:                                               ; preds = %31
  %40 = load i32, i32* @optarg, align 4
  %41 = call i32 @to_kbytes(i32 %40)
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @parts, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %41, i32* %46, align 4
  %47 = load i8, i8* %6, align 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @parts, align 8
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i8 %47, i8* %53, align 4
  br label %81

54:                                               ; preds = %15
  %55 = load i32, i32* @optarg, align 4
  %56 = call i32 @strtoul(i32 %55, i32* null, i32 16)
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %6, align 1
  br label %81

58:                                               ; preds = %15
  %59 = load i32, i32* @optarg, align 4
  %60 = call i32 @strtoul(i32 %59, i32* null, i32 0)
  store i32 %60, i32* @active, align 4
  %61 = load i32, i32* @active, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @active, align 4
  %65 = icmp sgt i32 %64, 4
  br i1 %65, label %66, label %67

66:                                               ; preds = %63, %58
  store i32 0, i32* @active, align 4
  br label %67

67:                                               ; preds = %66, %63
  br label %81

68:                                               ; preds = %15
  %69 = load i32, i32* @optarg, align 4
  %70 = call i32 @strtoul(i32 %69, i32* null, i32 0)
  %71 = mul nsw i32 %70, 2
  store i32 %71, i32* @kb_align, align 4
  br label %81

72:                                               ; preds = %15
  %73 = load i32, i32* @optarg, align 4
  %74 = call i32 @strtoul(i32 %73, i32* null, i32 0)
  store i32 %74, i32* %9, align 4
  br label %81

75:                                               ; preds = %15
  br label %76

76:                                               ; preds = %15, %75
  %77 = load i8**, i8*** %5, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @usage(i8* %79)
  br label %81

81:                                               ; preds = %76, %72, %68, %67, %54, %39, %27, %23, %22, %19, %17
  br label %10

82:                                               ; preds = %10
  %83 = load i64, i64* @optind, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = sub nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %82
  %91 = load i64, i64* @heads, align 8
  %92 = icmp sle i64 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %90
  %94 = load i64, i64* @sectors, align 8
  %95 = icmp sle i64 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* @filename, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %96, %93, %90, %82
  %100 = load i8**, i8*** %5, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @usage(i8* %102)
  br label %104

104:                                              ; preds = %99, %96
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i64 @gen_ptable(i32 %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* @EXIT_FAILURE, align 4
  br label %113

111:                                              ; preds = %104
  %112 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i32 [ %110, %109 ], [ %112, %111 ]
  ret i32 %114
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strtoul(i32, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @to_kbytes(i32) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i64 @gen_ptable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
