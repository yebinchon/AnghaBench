; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_udf.c_grub_udf_read_block.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_udf.c_grub_udf_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32, i32, i32*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32* }
%struct.grub_udf_short_ad = type { i32, i32 }
%struct.grub_udf_long_ad = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }

@GRUB_UDF_TAG_IDENT_FE = common dso_local global i32 0, align 4
@GRUB_UDF_ICBTAG_FLAG_AD_MASK = common dso_local global i32 0, align 4
@GRUB_UDF_ICBTAG_FLAG_AD_SHORT = common dso_local global i32 0, align 4
@GRUB_UDF_BLKSZ = common dso_local global i32 0, align 4
@GRUB_UDF_EXT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32)* @grub_udf_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_udf_read_block(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.grub_udf_short_ad*, align 8
  %10 = alloca %struct.grub_udf_long_ad*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @U16(i32 %15)
  %17 = load i32, i32* @GRUB_UDF_TAG_IDENT_FE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %2
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = bitcast i32* %24 to i8*
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @U32(i32 %29)
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %25, i64 %31
  store i8* %32, i8** %6, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @U32(i32 %36)
  store i32 %37, i32* %7, align 4
  br label %57

38:                                               ; preds = %2
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = bitcast i32* %43 to i8*
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @U32(i32 %48)
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %44, i64 %50
  store i8* %51, i8** %6, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @U32(i32 %55)
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %38, %19
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @U16(i32 %62)
  %64 = load i32, i32* @GRUB_UDF_ICBTAG_FLAG_AD_MASK, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* @GRUB_UDF_ICBTAG_FLAG_AD_SHORT, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %126

68:                                               ; preds = %57
  %69 = load i8*, i8** %6, align 8
  %70 = bitcast i8* %69 to %struct.grub_udf_short_ad*
  store %struct.grub_udf_short_ad* %70, %struct.grub_udf_short_ad** %9, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = udiv i64 %72, 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @GRUB_UDF_BLKSZ, align 4
  %77 = mul nsw i32 %75, %76
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %114, %68
  %79 = load i32, i32* %7, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %125

81:                                               ; preds = %78
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.grub_udf_short_ad*, %struct.grub_udf_short_ad** %9, align 8
  %84 = getelementptr inbounds %struct.grub_udf_short_ad, %struct.grub_udf_short_ad* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @U32(i32 %85)
  %87 = icmp slt i32 %82, %86
  br i1 %87, label %88, label %114

88:                                               ; preds = %81
  %89 = load %struct.grub_udf_short_ad*, %struct.grub_udf_short_ad** %9, align 8
  %90 = getelementptr inbounds %struct.grub_udf_short_ad, %struct.grub_udf_short_ad* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @U32(i32 %91)
  %93 = load i32, i32* @GRUB_UDF_EXT_MASK, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  br label %112

97:                                               ; preds = %88
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.grub_udf_short_ad*, %struct.grub_udf_short_ad** %9, align 8
  %105 = getelementptr inbounds %struct.grub_udf_short_ad, %struct.grub_udf_short_ad* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @grub_udf_get_block(i32 %100, i32 %103, i32 %106)
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @GRUB_UDF_BLKSZ, align 4
  %110 = sdiv i32 %108, %109
  %111 = add nsw i32 %107, %110
  br label %112

112:                                              ; preds = %97, %96
  %113 = phi i32 [ 0, %96 ], [ %111, %97 ]
  store i32 %113, i32* %3, align 4
  br label %188

114:                                              ; preds = %81
  %115 = load %struct.grub_udf_short_ad*, %struct.grub_udf_short_ad** %9, align 8
  %116 = getelementptr inbounds %struct.grub_udf_short_ad, %struct.grub_udf_short_ad* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @U32(i32 %117)
  %119 = load i32, i32* %8, align 4
  %120 = sub nsw i32 %119, %118
  store i32 %120, i32* %8, align 4
  %121 = load %struct.grub_udf_short_ad*, %struct.grub_udf_short_ad** %9, align 8
  %122 = getelementptr inbounds %struct.grub_udf_short_ad, %struct.grub_udf_short_ad* %121, i32 1
  store %struct.grub_udf_short_ad* %122, %struct.grub_udf_short_ad** %9, align 8
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %7, align 4
  br label %78

125:                                              ; preds = %78
  br label %187

126:                                              ; preds = %57
  %127 = load i8*, i8** %6, align 8
  %128 = bitcast i8* %127 to %struct.grub_udf_long_ad*
  store %struct.grub_udf_long_ad* %128, %struct.grub_udf_long_ad** %10, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = udiv i64 %130, 12
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* @GRUB_UDF_BLKSZ, align 4
  %135 = mul nsw i32 %133, %134
  store i32 %135, i32* %8, align 4
  br label %136

136:                                              ; preds = %175, %126
  %137 = load i32, i32* %7, align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %186

139:                                              ; preds = %136
  %140 = load i32, i32* %8, align 4
  %141 = load %struct.grub_udf_long_ad*, %struct.grub_udf_long_ad** %10, align 8
  %142 = getelementptr inbounds %struct.grub_udf_long_ad, %struct.grub_udf_long_ad* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @U32(i32 %143)
  %145 = icmp slt i32 %140, %144
  br i1 %145, label %146, label %175

146:                                              ; preds = %139
  %147 = load %struct.grub_udf_long_ad*, %struct.grub_udf_long_ad** %10, align 8
  %148 = getelementptr inbounds %struct.grub_udf_long_ad, %struct.grub_udf_long_ad* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @U32(i32 %150)
  %152 = load i32, i32* @GRUB_UDF_EXT_MASK, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %146
  br label %173

156:                                              ; preds = %146
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.grub_udf_long_ad*, %struct.grub_udf_long_ad** %10, align 8
  %161 = getelementptr inbounds %struct.grub_udf_long_ad, %struct.grub_udf_long_ad* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.grub_udf_long_ad*, %struct.grub_udf_long_ad** %10, align 8
  %165 = getelementptr inbounds %struct.grub_udf_long_ad, %struct.grub_udf_long_ad* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @grub_udf_get_block(i32 %159, i32 %163, i32 %167)
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* @GRUB_UDF_BLKSZ, align 4
  %171 = sdiv i32 %169, %170
  %172 = add nsw i32 %168, %171
  br label %173

173:                                              ; preds = %156, %155
  %174 = phi i32 [ 0, %155 ], [ %172, %156 ]
  store i32 %174, i32* %3, align 4
  br label %188

175:                                              ; preds = %139
  %176 = load %struct.grub_udf_long_ad*, %struct.grub_udf_long_ad** %10, align 8
  %177 = getelementptr inbounds %struct.grub_udf_long_ad, %struct.grub_udf_long_ad* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @U32(i32 %178)
  %180 = load i32, i32* %8, align 4
  %181 = sub nsw i32 %180, %179
  store i32 %181, i32* %8, align 4
  %182 = load %struct.grub_udf_long_ad*, %struct.grub_udf_long_ad** %10, align 8
  %183 = getelementptr inbounds %struct.grub_udf_long_ad, %struct.grub_udf_long_ad* %182, i32 1
  store %struct.grub_udf_long_ad* %183, %struct.grub_udf_long_ad** %10, align 8
  %184 = load i32, i32* %7, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %7, align 4
  br label %136

186:                                              ; preds = %136
  br label %187

187:                                              ; preds = %186, %125
  store i32 0, i32* %3, align 4
  br label %188

188:                                              ; preds = %187, %173, %112
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i32 @U16(i32) #1

declare dso_local i32 @U32(i32) #1

declare dso_local i32 @grub_udf_get_block(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
