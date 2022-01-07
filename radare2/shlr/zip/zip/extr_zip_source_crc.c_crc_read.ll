; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_crc.c_crc_read.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_crc.c_crc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_source = type { i32 }
%struct.crc_context = type { i32, i32*, i32, i8*, i32 }
%struct.zip_stat = type { i32, i32, i32, i32, i8*, i32 }

@ZIP_SOURCE_ERR_LOWER = common dso_local global i32 0, align 4
@ZIP_STAT_CRC = common dso_local global i32 0, align 4
@ZIP_ER_CRC = common dso_local global i32 0, align 4
@ZIP_STAT_SIZE = common dso_local global i32 0, align 4
@ZIP_ER_INCONS = common dso_local global i32 0, align 4
@ZIP_CM_STORE = common dso_local global i32 0, align 4
@ZIP_EM_NONE = common dso_local global i32 0, align 4
@ZIP_STAT_COMP_SIZE = common dso_local global i32 0, align 4
@ZIP_STAT_COMP_METHOD = common dso_local global i32 0, align 4
@ZIP_STAT_ENCRYPTION_METHOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zip_source*, i8*, i8*, i32, i32)* @crc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crc_read(%struct.zip_source* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.zip_source*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.crc_context*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.zip_stat, align 8
  %15 = alloca %struct.zip_stat*, align 8
  store %struct.zip_source* %0, %struct.zip_source** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.crc_context*
  store %struct.crc_context* %17, %struct.crc_context** %12, align 8
  %18 = load i32, i32* %11, align 4
  switch i32 %18, label %182 [
    i32 130, label %19
    i32 129, label %29
    i32 133, label %129
    i32 128, label %130
    i32 132, label %173
    i32 131, label %179
  ]

19:                                               ; preds = %5
  %20 = load %struct.crc_context*, %struct.crc_context** %12, align 8
  %21 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = call i32 @crc32(i8* null, i32* null, i32 0)
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.crc_context*, %struct.crc_context** %12, align 8
  %26 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load %struct.crc_context*, %struct.crc_context** %12, align 8
  %28 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %27, i32 0, i32 2
  store i32 0, i32* %28, align 8
  store i32 0, i32* %6, align 4
  br label %183

29:                                               ; preds = %5
  %30 = load %struct.crc_context*, %struct.crc_context** %12, align 8
  %31 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %29
  store i32 0, i32* %6, align 4
  br label %183

38:                                               ; preds = %34
  %39 = load %struct.zip_source*, %struct.zip_source** %7, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @zip_source_read(%struct.zip_source* %39, i8* %40, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @ZIP_SOURCE_ERR_LOWER, align 4
  store i32 %45, i32* %6, align 4
  br label %183

46:                                               ; preds = %38
  %47 = load i32, i32* %13, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %110

49:                                               ; preds = %46
  %50 = load %struct.crc_context*, %struct.crc_context** %12, align 8
  %51 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.crc_context*, %struct.crc_context** %12, align 8
  %53 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %109

56:                                               ; preds = %49
  %57 = load %struct.zip_source*, %struct.zip_source** %7, align 8
  %58 = call i32 @zip_source_stat(%struct.zip_source* %57, %struct.zip_stat* %14)
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @ZIP_SOURCE_ERR_LOWER, align 4
  store i32 %61, i32* %6, align 4
  br label %183

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %14, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @ZIP_STAT_CRC, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %14, i32 0, i32 4
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.crc_context*, %struct.crc_context** %12, align 8
  %72 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %71, i32 0, i32 3
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %70, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %68
  %76 = load i32, i32* @ZIP_ER_CRC, align 4
  %77 = load %struct.crc_context*, %struct.crc_context** %12, align 8
  %78 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  store i32 %76, i32* %80, align 4
  %81 = load %struct.crc_context*, %struct.crc_context** %12, align 8
  %82 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  store i32 0, i32* %84, align 4
  store i32 -1, i32* %6, align 4
  br label %183

85:                                               ; preds = %68, %62
  %86 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %14, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @ZIP_STAT_SIZE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %14, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.crc_context*, %struct.crc_context** %12, align 8
  %95 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %93, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %91
  %99 = load i32, i32* @ZIP_ER_INCONS, align 4
  %100 = load %struct.crc_context*, %struct.crc_context** %12, align 8
  %101 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 %99, i32* %103, align 4
  %104 = load %struct.crc_context*, %struct.crc_context** %12, align 8
  %105 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  store i32 0, i32* %107, align 4
  store i32 -1, i32* %6, align 4
  br label %183

108:                                              ; preds = %91, %85
  br label %109

109:                                              ; preds = %108, %49
  br label %127

110:                                              ; preds = %46
  %111 = load i32, i32* %13, align 4
  %112 = load %struct.crc_context*, %struct.crc_context** %12, align 8
  %113 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load %struct.crc_context*, %struct.crc_context** %12, align 8
  %117 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %116, i32 0, i32 3
  %118 = load i8*, i8** %117, align 8
  %119 = load i8*, i8** %9, align 8
  %120 = bitcast i8* %119 to i32*
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @crc32(i8* %118, i32* %120, i32 %121)
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to i8*
  %125 = load %struct.crc_context*, %struct.crc_context** %12, align 8
  %126 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %125, i32 0, i32 3
  store i8* %124, i8** %126, align 8
  br label %127

127:                                              ; preds = %110, %109
  %128 = load i32, i32* %13, align 4
  store i32 %128, i32* %6, align 4
  br label %183

129:                                              ; preds = %5
  store i32 0, i32* %6, align 4
  br label %183

130:                                              ; preds = %5
  %131 = load i8*, i8** %9, align 8
  %132 = bitcast i8* %131 to %struct.zip_stat*
  store %struct.zip_stat* %132, %struct.zip_stat** %15, align 8
  %133 = load %struct.crc_context*, %struct.crc_context** %12, align 8
  %134 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %172

137:                                              ; preds = %130
  %138 = load %struct.crc_context*, %struct.crc_context** %12, align 8
  %139 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.zip_stat*, %struct.zip_stat** %15, align 8
  %142 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %141, i32 0, i32 5
  store i32 %140, i32* %142, align 8
  %143 = load %struct.crc_context*, %struct.crc_context** %12, align 8
  %144 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %143, i32 0, i32 3
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.zip_stat*, %struct.zip_stat** %15, align 8
  %147 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %146, i32 0, i32 4
  store i8* %145, i8** %147, align 8
  %148 = load %struct.crc_context*, %struct.crc_context** %12, align 8
  %149 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.zip_stat*, %struct.zip_stat** %15, align 8
  %152 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* @ZIP_CM_STORE, align 4
  %154 = load %struct.zip_stat*, %struct.zip_stat** %15, align 8
  %155 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 8
  %156 = load i32, i32* @ZIP_EM_NONE, align 4
  %157 = load %struct.zip_stat*, %struct.zip_stat** %15, align 8
  %158 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* @ZIP_STAT_SIZE, align 4
  %160 = load i32, i32* @ZIP_STAT_CRC, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @ZIP_STAT_COMP_SIZE, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @ZIP_STAT_COMP_METHOD, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @ZIP_STAT_ENCRYPTION_METHOD, align 4
  %167 = or i32 %165, %166
  %168 = load %struct.zip_stat*, %struct.zip_stat** %15, align 8
  %169 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 8
  br label %172

172:                                              ; preds = %137, %130
  store i32 0, i32* %6, align 4
  br label %183

173:                                              ; preds = %5
  %174 = load i8*, i8** %9, align 8
  %175 = load %struct.crc_context*, %struct.crc_context** %12, align 8
  %176 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = call i32 @memcpy(i8* %174, i32* %177, i32 8)
  store i32 0, i32* %6, align 4
  br label %183

179:                                              ; preds = %5
  %180 = load %struct.crc_context*, %struct.crc_context** %12, align 8
  %181 = call i32 @free(%struct.crc_context* %180)
  store i32 0, i32* %6, align 4
  br label %183

182:                                              ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %183

183:                                              ; preds = %182, %179, %173, %172, %129, %127, %98, %75, %60, %44, %37, %19
  %184 = load i32, i32* %6, align 4
  ret i32 %184
}

declare dso_local i32 @crc32(i8*, i32*, i32) #1

declare dso_local i32 @zip_source_read(%struct.zip_source*, i8*, i32) #1

declare dso_local i32 @zip_source_stat(%struct.zip_source*, %struct.zip_stat*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @free(%struct.crc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
