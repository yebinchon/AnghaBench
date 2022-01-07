; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_conv.c_LocalToUtf.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_conv.c_LocalToUtf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8, i8 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"invalid encoding number: %d\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"unsupported character length %d\00", align 1
@compare4 = common dso_local global i32 0, align 4
@PG_UTF8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LocalToUtf(i8* %0, i32 %1, i8* %2, i32* %3, %struct.TYPE_5__* %4, i32 %5, i8 (i8)* %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8 (i8)*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_5__*, align 8
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32* %3, i32** %12, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8 (i8)* %6, i8 (i8)** %15, align 8
  store i32 %7, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  %27 = call i32 @PG_VALID_ENCODING(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %8
  %30 = load i32, i32* @ERROR, align 4
  %31 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %32 = call i32 @errcode(i32 %31)
  %33 = load i32, i32* %16, align 4
  %34 = call i32 @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = call i32 @ereport(i32 %30, i32 %34)
  br label %36

36:                                               ; preds = %29, %8
  br label %37

37:                                               ; preds = %197, %36
  %38 = load i32, i32* %10, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %201

40:                                               ; preds = %37
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %41 = load i8*, i8** %9, align 8
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %201

46:                                               ; preds = %40
  %47 = load i8*, i8** %9, align 8
  %48 = load i8, i8* %47, align 1
  %49 = call i32 @IS_HIGHBIT_SET(i8 zeroext %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %9, align 8
  %54 = load i8, i8* %52, align 1
  %55 = load i8*, i8** %11, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %11, align 8
  store i8 %54, i8* %55, align 1
  store i32 1, i32* %18, align 4
  br label %197

57:                                               ; preds = %46
  %58 = load i32, i32* %16, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @pg_encoding_verifymb(i32 %58, i8* %59, i32 %60)
  store i32 %61, i32* %18, align 4
  %62 = load i32, i32* %18, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %201

65:                                               ; preds = %57
  %66 = load i32, i32* %18, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %9, align 8
  %71 = load i8, i8* %69, align 1
  store i8 %71, i8* %23, align 1
  br label %118

72:                                               ; preds = %65
  %73 = load i32, i32* %18, align 4
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i8*, i8** %9, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %9, align 8
  %78 = load i8, i8* %76, align 1
  store i8 %78, i8* %22, align 1
  %79 = load i8*, i8** %9, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %9, align 8
  %81 = load i8, i8* %79, align 1
  store i8 %81, i8* %23, align 1
  br label %117

82:                                               ; preds = %72
  %83 = load i32, i32* %18, align 4
  %84 = icmp eq i32 %83, 3
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = load i8*, i8** %9, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %9, align 8
  %88 = load i8, i8* %86, align 1
  store i8 %88, i8* %21, align 1
  %89 = load i8*, i8** %9, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %9, align 8
  %91 = load i8, i8* %89, align 1
  store i8 %91, i8* %22, align 1
  %92 = load i8*, i8** %9, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %9, align 8
  %94 = load i8, i8* %92, align 1
  store i8 %94, i8* %23, align 1
  br label %116

95:                                               ; preds = %82
  %96 = load i32, i32* %18, align 4
  %97 = icmp eq i32 %96, 4
  br i1 %97, label %98, label %111

98:                                               ; preds = %95
  %99 = load i8*, i8** %9, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %9, align 8
  %101 = load i8, i8* %99, align 1
  store i8 %101, i8* %20, align 1
  %102 = load i8*, i8** %9, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %9, align 8
  %104 = load i8, i8* %102, align 1
  store i8 %104, i8* %21, align 1
  %105 = load i8*, i8** %9, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %9, align 8
  %107 = load i8, i8* %105, align 1
  store i8 %107, i8* %22, align 1
  %108 = load i8*, i8** %9, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %9, align 8
  %110 = load i8, i8* %108, align 1
  store i8 %110, i8* %23, align 1
  br label %115

111:                                              ; preds = %95
  %112 = load i32, i32* @ERROR, align 4
  %113 = load i32, i32* %18, align 4
  %114 = call i32 @elog(i32 %112, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  store i8 0, i8* %17, align 1
  br label %115

115:                                              ; preds = %111, %98
  br label %116

116:                                              ; preds = %115, %85
  br label %117

117:                                              ; preds = %116, %75
  br label %118

118:                                              ; preds = %117, %68
  %119 = load i8, i8* %20, align 1
  %120 = zext i8 %119 to i32
  %121 = shl i32 %120, 24
  %122 = load i8, i8* %21, align 1
  %123 = zext i8 %122 to i32
  %124 = shl i32 %123, 16
  %125 = or i32 %121, %124
  %126 = load i8, i8* %22, align 1
  %127 = zext i8 %126 to i32
  %128 = shl i32 %127, 8
  %129 = or i32 %125, %128
  %130 = load i8, i8* %23, align 1
  %131 = zext i8 %130 to i32
  %132 = or i32 %129, %131
  %133 = trunc i32 %132 to i8
  store i8 %133, i8* %17, align 1
  %134 = load i32*, i32** %12, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %173

136:                                              ; preds = %118
  %137 = load i32*, i32** %12, align 8
  %138 = load i32, i32* %18, align 4
  %139 = load i8, i8* %20, align 1
  %140 = load i8, i8* %21, align 1
  %141 = load i8, i8* %22, align 1
  %142 = load i8, i8* %23, align 1
  %143 = call zeroext i8 @pg_mb_radix_conv(i32* %137, i32 %138, i8 zeroext %139, i8 zeroext %140, i8 zeroext %141, i8 zeroext %142)
  store i8 %143, i8* %24, align 1
  %144 = load i8, i8* %24, align 1
  %145 = icmp ne i8 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %136
  %147 = load i8*, i8** %11, align 8
  %148 = load i8, i8* %24, align 1
  %149 = call i8* @store_coded_char(i8* %147, i8 zeroext %148)
  store i8* %149, i8** %11, align 8
  br label %197

150:                                              ; preds = %136
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %152 = icmp ne %struct.TYPE_5__* %151, null
  br i1 %152, label %153, label %172

153:                                              ; preds = %150
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* @compare4, align 4
  %157 = call %struct.TYPE_5__* @bsearch(i8* %17, %struct.TYPE_5__* %154, i32 %155, i32 2, i32 %156)
  store %struct.TYPE_5__* %157, %struct.TYPE_5__** %19, align 8
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %159 = icmp ne %struct.TYPE_5__* %158, null
  br i1 %159, label %160, label %171

160:                                              ; preds = %153
  %161 = load i8*, i8** %11, align 8
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i8, i8* %163, align 1
  %165 = call i8* @store_coded_char(i8* %161, i8 zeroext %164)
  store i8* %165, i8** %11, align 8
  %166 = load i8*, i8** %11, align 8
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  %169 = load i8, i8* %168, align 1
  %170 = call i8* @store_coded_char(i8* %166, i8 zeroext %169)
  store i8* %170, i8** %11, align 8
  br label %197

171:                                              ; preds = %153
  br label %172

172:                                              ; preds = %171, %150
  br label %173

173:                                              ; preds = %172, %118
  %174 = load i8 (i8)*, i8 (i8)** %15, align 8
  %175 = icmp ne i8 (i8)* %174, null
  br i1 %175, label %176, label %187

176:                                              ; preds = %173
  %177 = load i8 (i8)*, i8 (i8)** %15, align 8
  %178 = load i8, i8* %17, align 1
  %179 = call zeroext i8 %177(i8 zeroext %178)
  store i8 %179, i8* %25, align 1
  %180 = load i8, i8* %25, align 1
  %181 = icmp ne i8 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %176
  %183 = load i8*, i8** %11, align 8
  %184 = load i8, i8* %25, align 1
  %185 = call i8* @store_coded_char(i8* %183, i8 zeroext %184)
  store i8* %185, i8** %11, align 8
  br label %197

186:                                              ; preds = %176
  br label %187

187:                                              ; preds = %186, %173
  %188 = load i32, i32* %16, align 4
  %189 = load i32, i32* @PG_UTF8, align 4
  %190 = load i8*, i8** %9, align 8
  %191 = load i32, i32* %18, align 4
  %192 = sext i32 %191 to i64
  %193 = sub i64 0, %192
  %194 = getelementptr inbounds i8, i8* %190, i64 %193
  %195 = load i32, i32* %10, align 4
  %196 = call i32 @report_untranslatable_char(i32 %188, i32 %189, i8* %194, i32 %195)
  br label %197

197:                                              ; preds = %187, %182, %160, %146, %51
  %198 = load i32, i32* %18, align 4
  %199 = load i32, i32* %10, align 4
  %200 = sub nsw i32 %199, %198
  store i32 %200, i32* %10, align 4
  br label %37

201:                                              ; preds = %64, %45, %37
  %202 = load i32, i32* %10, align 4
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %201
  %205 = load i32, i32* %16, align 4
  %206 = load i8*, i8** %9, align 8
  %207 = load i32, i32* %10, align 4
  %208 = call i32 @report_invalid_encoding(i32 %205, i8* %206, i32 %207)
  br label %209

209:                                              ; preds = %204, %201
  %210 = load i8*, i8** %11, align 8
  store i8 0, i8* %210, align 1
  ret void
}

declare dso_local i32 @PG_VALID_ENCODING(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @IS_HIGHBIT_SET(i8 zeroext) #1

declare dso_local i32 @pg_encoding_verifymb(i32, i8*, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local zeroext i8 @pg_mb_radix_conv(i32*, i32, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i8* @store_coded_char(i8*, i8 zeroext) #1

declare dso_local %struct.TYPE_5__* @bsearch(i8*, %struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @report_untranslatable_char(i32, i32, i8*, i32) #1

declare dso_local i32 @report_invalid_encoding(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
