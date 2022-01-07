; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/page/extr_bufpage.c_PageIsVerified.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/page/extr_bufpage.c_PageIsVerified.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64, i64, i64 }

@PD_VALID_FLAG_BITS = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"BLCKSZ has to be a multiple of sizeof(size_t)\00", align 1
@WARNING = common dso_local global i32 0, align 4
@ERRCODE_DATA_CORRUPTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"page verification failed, calculated checksum %u but expected %u\00", align 1
@ignore_checksum_failure = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PageIsVerified(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i64, i64* %4, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @PageIsNew(i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %82, label %18

18:                                               ; preds = %2
  %19 = call i64 (...) @DataChecksumsEnabled()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load i64, i64* %4, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @pg_checksum_page(i8* %23, i32 %24)
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i32 1, i32* %9, align 4
  br label %32

32:                                               ; preds = %31, %21
  br label %33

33:                                               ; preds = %32, %18
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @PD_VALID_FLAG_BITS, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %74

41:                                               ; preds = %33
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp sle i64 %44, %47
  br i1 %48, label %49, label %74

49:                                               ; preds = %41
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp sle i64 %52, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %49
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @BLCKSZ, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp sle i64 %60, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %57
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @MAXALIGN(i64 %70)
  %72 = icmp eq i64 %67, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  store i32 1, i32* %10, align 4
  br label %74

74:                                               ; preds = %73, %64, %57, %49, %41, %33
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  store i32 1, i32* %3, align 4
  br label %138

81:                                               ; preds = %77, %74
  br label %82

82:                                               ; preds = %81, %2
  %83 = load i32, i32* @BLCKSZ, align 4
  %84 = sext i32 %83 to i64
  %85 = load i32, i32* @BLCKSZ, align 4
  %86 = sext i32 %85 to i64
  %87 = udiv i64 %86, 8
  %88 = mul i64 %87, 8
  %89 = icmp eq i64 %84, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @StaticAssertStmt(i32 %90, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  %92 = load i64, i64* %4, align 8
  %93 = inttoptr i64 %92 to i64*
  store i64* %93, i64** %7, align 8
  store i32 0, i32* %8, align 4
  br label %94

94:                                               ; preds = %110, %82
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = load i32, i32* @BLCKSZ, align 4
  %98 = sext i32 %97 to i64
  %99 = udiv i64 %98, 8
  %100 = icmp ult i64 %96, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %94
  %102 = load i64*, i64** %7, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  store i32 0, i32* %11, align 4
  br label %113

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  br label %94

113:                                              ; preds = %108, %94
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store i32 1, i32* %3, align 4
  br label %138

117:                                              ; preds = %113
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %137

120:                                              ; preds = %117
  %121 = load i32, i32* @WARNING, align 4
  %122 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %123 = load i64, i64* %12, align 8
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i64 %123, i64 %126)
  %128 = call i32 @ereport(i32 %121, i32 %127)
  %129 = call i32 (...) @pgstat_report_checksum_failure()
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %120
  %133 = load i64, i64* @ignore_checksum_failure, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store i32 1, i32* %3, align 4
  br label %138

136:                                              ; preds = %132, %120
  br label %137

137:                                              ; preds = %136, %117
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %137, %135, %116, %80
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @PageIsNew(i64) #1

declare dso_local i64 @DataChecksumsEnabled(...) #1

declare dso_local i64 @pg_checksum_page(i8*, i32) #1

declare dso_local i64 @MAXALIGN(i64) #1

declare dso_local i32 @StaticAssertStmt(i32, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i64, i64) #1

declare dso_local i32 @pgstat_report_checksum_failure(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
