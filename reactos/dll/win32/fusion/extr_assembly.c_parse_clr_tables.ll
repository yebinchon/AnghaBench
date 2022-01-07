; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/fusion/extr_assembly.c_parse_clr_tables.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/fusion/extr_assembly.c_parse_clr_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32*, i32, %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@E_FAIL = common dso_local global i32 0, align 4
@MD_STRINGS_BIT = common dso_local global i32 0, align 4
@MD_GUIDS_BIT = common dso_local global i32 0, align 4
@MD_BLOBS_BIT = common dso_local global i32 0, align 4
@MAX_CLR_TABLES = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32)* @parse_clr_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_clr_tables(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %8, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i8* @assembly_data_offset(%struct.TYPE_10__* %11, i32 %12)
  %14 = bitcast i8* %13 to %struct.TYPE_9__*
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 6
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %16, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 6
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = icmp ne %struct.TYPE_9__* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @E_FAIL, align 4
  store i32 %22, i32* %3, align 4
  br label %182

23:                                               ; preds = %2
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 6
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MD_STRINGS_BIT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i64 4, i64 4
  %34 = trunc i64 %33 to i32
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 6
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MD_GUIDS_BIT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i64 4, i64 4
  %47 = trunc i64 %46 to i32
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 6
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @MD_BLOBS_BIT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i64 4, i64 4
  %60 = trunc i64 %59 to i32
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = add i64 %64, 4
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %8, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i8* @assembly_data_offset(%struct.TYPE_10__* %67, i32 %68)
  %70 = bitcast i8* %69 to i32*
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 3
  store i32* %70, i32** %72, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %23
  %78 = load i32, i32* @E_FAIL, align 4
  store i32 %78, i32* %3, align 4
  br label %182

79:                                               ; preds = %23
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 5
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = load i32, i32* @MAX_CLR_TABLES, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 4
  %86 = trunc i64 %85 to i32
  %87 = call i32 @memset(%struct.TYPE_11__* %82, i32 -1, i32 %86)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 1, i32* %9, align 4
  br label %88

88:                                               ; preds = %119, %79
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @MAX_CLR_TABLES, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %124

92:                                               ; preds = %88
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 6
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %9, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %118

102:                                              ; preds = %92
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 5
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  store i32 %110, i32* %117, align 4
  br label %118

118:                                              ; preds = %102, %92
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %9, align 4
  %123 = shl i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %88

124:                                              ; preds = %88
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = mul i64 %131, 4
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = add i64 %134, %132
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %8, align 4
  store i32 0, i32* %6, align 4
  store i32 1, i32* %9, align 4
  br label %137

137:                                              ; preds = %175, %124
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* @MAX_CLR_TABLES, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %180

141:                                              ; preds = %137
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 6
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %9, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %174

151:                                              ; preds = %141
  %152 = load i32, i32* %8, align 4
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 5
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 1
  store i32 %152, i32* %159, align 4
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @get_table_size(%struct.TYPE_10__* %160, i32 %161)
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 5
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %164, align 8
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = mul nsw i32 %162, %170
  %172 = load i32, i32* %8, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %8, align 4
  br label %174

174:                                              ; preds = %151, %141
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %6, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %6, align 4
  %178 = load i32, i32* %9, align 4
  %179 = shl i32 %178, 1
  store i32 %179, i32* %9, align 4
  br label %137

180:                                              ; preds = %137
  %181 = load i32, i32* @S_OK, align 4
  store i32 %181, i32* %3, align 4
  br label %182

182:                                              ; preds = %180, %77, %21
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i8* @assembly_data_offset(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @get_table_size(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
