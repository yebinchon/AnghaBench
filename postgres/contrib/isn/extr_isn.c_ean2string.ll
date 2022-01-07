; ModuleID = '/home/carl/AnghaBench/postgres/contrib/isn/extr_isn.c_ean2string.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/isn/extr_isn.c_ean2string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INVALID = common dso_local global i32 0, align 4
@ISBN_index = common dso_local global i32** null, align 8
@MAXEAN13LEN = common dso_local global i32 0, align 4
@EAN13_range = common dso_local global i8*** null, align 8
@EAN13_index = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [5 x i8] c"978-\00", align 1
@ISBN_range = common dso_local global i8*** null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"977-\00", align 1
@ISSN_range = common dso_local global i8*** null, align 8
@ISSN_index = common dso_local global i32** null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"979-0\00", align 1
@ISMN_range = common dso_local global i8*** null, align 8
@ISMN_index = common dso_local global i32** null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"979-\00", align 1
@ISBN_range_new = common dso_local global i8*** null, align 8
@ISBN_index_new = common dso_local global i32** null, align 8
@UPC_range = common dso_local global i8*** null, align 8
@UPC_index = common dso_local global i32** null, align 8
@EAN13 = common dso_local global i32 0, align 4
@EAN13_FORMAT = common dso_local global i8* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"value \22%s\22 is out of range for %s type\00", align 1
@isn_names = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32)* @ean2string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ean2string(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x i8*]*, align 8
  %11 = alloca [2 x i32]*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca [64 x i8], align 16
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* @INVALID, align 4
  store i32 %18, i32* %12, align 4
  store i8 0, i8* %16, align 1
  %19 = load i32**, i32*** @ISBN_index, align 8
  %20 = bitcast i32** %19 to [2 x i32]*
  store [2 x i32]* %20, [2 x i32]** %11, align 8
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i8 33, i8* %16, align 1
  br label %25

25:                                               ; preds = %24, %4
  %26 = load i32, i32* %6, align 4
  %27 = ashr i32 %26, 1
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @UINT64CONST(i32 1316134911)
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %195

32:                                               ; preds = %25
  store i32 0, i32* %15, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* @MAXEAN13LEN, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  store i8* %36, i8** %13, align 8
  %37 = load i8*, i8** %13, align 8
  store i8 0, i8* %37, align 1
  %38 = load i8, i8* %16, align 1
  %39 = load i8*, i8** %13, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 -1
  store i8* %40, i8** %13, align 8
  store i8 %38, i8* %40, align 1
  br label %41

41:                                               ; preds = %64, %32
  %42 = load i32, i32* %6, align 4
  %43 = srem i32 %42, 10
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sdiv i32 %44, 10
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %14, align 4
  %47 = add i32 %46, 48
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %13, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 -1
  store i8* %50, i8** %13, align 8
  store i8 %48, i8* %50, align 1
  %51 = load i32, i32* %15, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %41
  %54 = load i8*, i8** %13, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 -1
  store i8* %55, i8** %13, align 8
  store i8 45, i8* %55, align 1
  br label %56

56:                                               ; preds = %53, %41
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* %15, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %15, align 4
  %63 = icmp ult i32 %61, 13
  br label %64

64:                                               ; preds = %60, %57
  %65 = phi i1 [ false, %57 ], [ %63, %60 ]
  br i1 %65, label %41, label %66

66:                                               ; preds = %64
  br label %67

67:                                               ; preds = %71, %66
  %68 = load i32, i32* %15, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %15, align 4
  %70 = icmp ult i32 %68, 13
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i8*, i8** %13, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 -1
  store i8* %73, i8** %13, align 8
  store i8 48, i8* %73, align 1
  br label %67

74:                                               ; preds = %67
  %75 = load i8*, i8** %8, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 3
  %78 = load i8***, i8**** @EAN13_range, align 8
  %79 = load i32**, i32*** @EAN13_index, align 8
  %80 = call i32 @hyphenate(i8* %75, i8* %77, i8*** %78, i32** %79)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %74
  %84 = load i8*, i8** %8, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 3
  %87 = call i32 @hyphenate(i8* %84, i8* %86, i8*** null, i32** null)
  store i32 %87, i32* %15, align 4
  br label %175

88:                                               ; preds = %74
  %89 = load i8*, i8** %8, align 8
  %90 = load i32, i32* %15, align 4
  %91 = call i64 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %89, i32 %90)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  store i32 131, i32* %12, align 4
  %94 = load i8***, i8**** @ISBN_range, align 8
  %95 = bitcast i8*** %94 to [2 x i8*]*
  store [2 x i8*]* %95, [2 x i8*]** %10, align 8
  %96 = load i32**, i32*** @ISBN_index, align 8
  %97 = bitcast i32** %96 to [2 x i32]*
  store [2 x i32]* %97, [2 x i32]** %11, align 8
  br label %145

98:                                               ; preds = %88
  %99 = load i8*, i8** %8, align 8
  %100 = load i32, i32* %15, align 4
  %101 = call i64 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %99, i32 %100)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  store i32 129, i32* %12, align 4
  %104 = load i8***, i8**** @ISSN_range, align 8
  %105 = bitcast i8*** %104 to [2 x i8*]*
  store [2 x i8*]* %105, [2 x i8*]** %10, align 8
  %106 = load i32**, i32*** @ISSN_index, align 8
  %107 = bitcast i32** %106 to [2 x i32]*
  store [2 x i32]* %107, [2 x i32]** %11, align 8
  br label %144

108:                                              ; preds = %98
  %109 = load i8*, i8** %8, align 8
  %110 = load i32, i32* %15, align 4
  %111 = add i32 %110, 1
  %112 = call i64 @strncmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %109, i32 %111)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %108
  store i32 130, i32* %12, align 4
  %115 = load i8***, i8**** @ISMN_range, align 8
  %116 = bitcast i8*** %115 to [2 x i8*]*
  store [2 x i8*]* %116, [2 x i8*]** %10, align 8
  %117 = load i32**, i32*** @ISMN_index, align 8
  %118 = bitcast i32** %117 to [2 x i32]*
  store [2 x i32]* %118, [2 x i32]** %11, align 8
  br label %143

119:                                              ; preds = %108
  %120 = load i8*, i8** %8, align 8
  %121 = load i32, i32* %15, align 4
  %122 = call i64 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %120, i32 %121)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  store i32 131, i32* %12, align 4
  %125 = load i8***, i8**** @ISBN_range_new, align 8
  %126 = bitcast i8*** %125 to [2 x i8*]*
  store [2 x i8*]* %126, [2 x i8*]** %10, align 8
  %127 = load i32**, i32*** @ISBN_index_new, align 8
  %128 = bitcast i32** %127 to [2 x i32]*
  store [2 x i32]* %128, [2 x i32]** %11, align 8
  br label %142

129:                                              ; preds = %119
  %130 = load i8*, i8** %8, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 48
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  store i32 128, i32* %12, align 4
  %135 = load i8***, i8**** @UPC_range, align 8
  %136 = bitcast i8*** %135 to [2 x i8*]*
  store [2 x i8*]* %136, [2 x i8*]** %10, align 8
  %137 = load i32**, i32*** @UPC_index, align 8
  %138 = bitcast i32** %137 to [2 x i32]*
  store [2 x i32]* %138, [2 x i32]** %11, align 8
  br label %141

139:                                              ; preds = %129
  %140 = load i32, i32* @EAN13, align 4
  store i32 %140, i32* %12, align 4
  store [2 x i8*]* null, [2 x i8*]** %10, align 8
  store [2 x i32]* null, [2 x i32]** %11, align 8
  br label %141

141:                                              ; preds = %139, %134
  br label %142

142:                                              ; preds = %141, %124
  br label %143

143:                                              ; preds = %142, %114
  br label %144

144:                                              ; preds = %143, %103
  br label %145

145:                                              ; preds = %144, %93
  %146 = load i32, i32* %15, align 4
  store i32 %146, i32* %14, align 4
  %147 = load i8*, i8** %8, align 8
  %148 = load i32, i32* %14, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i8*, i8** %8, align 8
  %152 = load i32, i32* %14, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  %155 = getelementptr inbounds i8, i8* %154, i64 2
  %156 = load [2 x i8*]*, [2 x i8*]** %10, align 8
  %157 = bitcast [2 x i8*]* %156 to i8***
  %158 = load [2 x i32]*, [2 x i32]** %11, align 8
  %159 = bitcast [2 x i32]* %158 to i32**
  %160 = call i32 @hyphenate(i8* %150, i8* %155, i8*** %157, i32** %159)
  store i32 %160, i32* %15, align 4
  %161 = load i32, i32* %15, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %145
  %164 = load i8*, i8** %8, align 8
  %165 = load i32, i32* %14, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  %168 = load i8*, i8** %8, align 8
  %169 = load i32, i32* %14, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  %172 = getelementptr inbounds i8, i8* %171, i64 2
  %173 = call i32 @hyphenate(i8* %167, i8* %172, i8*** null, i32** null)
  store i32 %173, i32* %15, align 4
  br label %175

174:                                              ; preds = %145
  br label %175

175:                                              ; preds = %174, %163, %83
  %176 = load i32, i32* %9, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %194

178:                                              ; preds = %175
  %179 = load i32, i32* %12, align 4
  switch i32 %179, label %192 [
    i32 131, label %180
    i32 130, label %183
    i32 129, label %186
    i32 128, label %189
  ]

180:                                              ; preds = %178
  %181 = load i8*, i8** %8, align 8
  %182 = call i32 @ean2ISBN(i8* %181)
  br label %193

183:                                              ; preds = %178
  %184 = load i8*, i8** %8, align 8
  %185 = call i32 @ean2ISMN(i8* %184)
  br label %193

186:                                              ; preds = %178
  %187 = load i8*, i8** %8, align 8
  %188 = call i32 @ean2ISSN(i8* %187)
  br label %193

189:                                              ; preds = %178
  %190 = load i8*, i8** %8, align 8
  %191 = call i32 @ean2UPC(i8* %190)
  br label %193

192:                                              ; preds = %178
  br label %193

193:                                              ; preds = %192, %189, %186, %183, %180
  br label %194

194:                                              ; preds = %193, %175
  store i32 1, i32* %5, align 4
  br label %215

195:                                              ; preds = %31
  %196 = load i32, i32* %7, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %214, label %198

198:                                              ; preds = %195
  %199 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %200 = load i8*, i8** @EAN13_FORMAT, align 8
  %201 = load i32, i32* %6, align 4
  %202 = call i32 @snprintf(i8* %199, i32 64, i8* %200, i32 %201)
  %203 = load i32, i32* @ERROR, align 4
  %204 = load i32, i32* @ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE, align 4
  %205 = call i32 @errcode(i32 %204)
  %206 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %207 = load i32*, i32** @isn_names, align 8
  %208 = load i32, i32* %12, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %206, i32 %211)
  %213 = call i32 @ereport(i32 %203, i32 %212)
  br label %214

214:                                              ; preds = %198, %195
  store i32 0, i32* %5, align 4
  br label %215

215:                                              ; preds = %214, %194
  %216 = load i32, i32* %5, align 4
  ret i32 %216
}

declare dso_local i32 @UINT64CONST(i32) #1

declare dso_local i32 @hyphenate(i8*, i8*, i8***, i32**) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ean2ISBN(i8*) #1

declare dso_local i32 @ean2ISMN(i8*) #1

declare dso_local i32 @ean2ISSN(i8*) #1

declare dso_local i32 @ean2UPC(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
