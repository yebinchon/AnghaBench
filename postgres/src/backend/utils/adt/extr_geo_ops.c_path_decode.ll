; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_geo_ops.c_path_decode.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_geo_ops.c_path_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@LDELIM_EP = common dso_local global i8 0, align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_TEXT_REPRESENTATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"invalid input syntax for type %s: \22%s\22\00", align 1
@LDELIM = common dso_local global i8 0, align 1
@DELIM = common dso_local global i8 0, align 1
@RDELIM = common dso_local global i8 0, align 1
@RDELIM_EP = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, %struct.TYPE_3__*, i32*, i8**, i8*, i8*)* @path_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @path_decode(i8* %0, i32 %1, i32 %2, %struct.TYPE_3__* %3, i32* %4, i8** %5, i8* %6, i8* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %12, align 8
  store i32* %4, i32** %13, align 8
  store i8** %5, i8*** %14, align 8
  store i8* %6, i8** %15, align 8
  store i8* %7, i8** %16, align 8
  store i32 0, i32* %17, align 4
  br label %20

20:                                               ; preds = %25, %8
  %21 = load i8*, i8** %9, align 8
  %22 = load i8, i8* %21, align 1
  %23 = call i64 @isspace(i8 zeroext %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i8*, i8** %9, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %9, align 8
  br label %20

28:                                               ; preds = %20
  %29 = load i8*, i8** %9, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = load i8, i8* @LDELIM_EP, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %31, %33
  %35 = zext i1 %34 to i32
  %36 = load i32*, i32** %13, align 8
  store i32 %35, i32* %36, align 4
  br i1 %34, label %37, label %53

37:                                               ; preds = %28
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @ERROR, align 4
  %42 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %43 = call i32 @errcode(i32 %42)
  %44 = load i8*, i8** %15, align 8
  %45 = load i8*, i8** %16, align 8
  %46 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %44, i8* %45)
  %47 = call i32 @ereport(i32 %41, i32 %46)
  br label %48

48:                                               ; preds = %40, %37
  %49 = load i32, i32* %17, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %17, align 4
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %9, align 8
  br label %95

53:                                               ; preds = %28
  %54 = load i8*, i8** %9, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8, i8* @LDELIM, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %94

60:                                               ; preds = %53
  %61 = load i8*, i8** %9, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  store i8* %62, i8** %18, align 8
  br label %63

63:                                               ; preds = %68, %60
  %64 = load i8*, i8** %18, align 8
  %65 = load i8, i8* %64, align 1
  %66 = call i64 @isspace(i8 zeroext %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i8*, i8** %18, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %18, align 8
  br label %63

71:                                               ; preds = %63
  %72 = load i8*, i8** %18, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = load i8, i8* @LDELIM, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i32, i32* %17, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %17, align 4
  %81 = load i8*, i8** %18, align 8
  store i8* %81, i8** %9, align 8
  br label %93

82:                                               ; preds = %71
  %83 = load i8*, i8** %9, align 8
  %84 = load i8, i8* @LDELIM, align 1
  %85 = call i8* @strrchr(i8* %83, i8 signext %84)
  %86 = load i8*, i8** %9, align 8
  %87 = icmp eq i8* %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load i32, i32* %17, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %17, align 4
  %91 = load i8*, i8** %18, align 8
  store i8* %91, i8** %9, align 8
  br label %92

92:                                               ; preds = %88, %82
  br label %93

93:                                               ; preds = %92, %78
  br label %94

94:                                               ; preds = %93, %53
  br label %95

95:                                               ; preds = %94, %48
  store i32 0, i32* %19, align 4
  br label %96

96:                                               ; preds = %121, %95
  %97 = load i32, i32* %19, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %124

100:                                              ; preds = %96
  %101 = load i8*, i8** %9, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i8*, i8** %15, align 8
  %107 = load i8*, i8** %16, align 8
  %108 = call i32 @pair_decode(i8* %101, i32* %103, i32* %105, i8** %9, i8* %106, i8* %107)
  %109 = load i8*, i8** %9, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = load i8, i8* @DELIM, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %100
  %116 = load i8*, i8** %9, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %9, align 8
  br label %118

118:                                              ; preds = %115, %100
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 1
  store %struct.TYPE_3__* %120, %struct.TYPE_3__** %12, align 8
  br label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %19, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %19, align 4
  br label %96

124:                                              ; preds = %96
  br label %125

125:                                              ; preds = %171, %124
  %126 = load i32, i32* %17, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %172

128:                                              ; preds = %125
  %129 = load i8*, i8** %9, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = load i8, i8* @RDELIM, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %131, %133
  br i1 %134, label %149, label %135

135:                                              ; preds = %128
  %136 = load i8*, i8** %9, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = load i8, i8* @RDELIM_EP, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %138, %140
  br i1 %141, label %142, label %163

142:                                              ; preds = %135
  %143 = load i32*, i32** %13, align 8
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %163

146:                                              ; preds = %142
  %147 = load i32, i32* %17, align 4
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %163

149:                                              ; preds = %146, %128
  %150 = load i32, i32* %17, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %17, align 4
  %152 = load i8*, i8** %9, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %9, align 8
  br label %154

154:                                              ; preds = %159, %149
  %155 = load i8*, i8** %9, align 8
  %156 = load i8, i8* %155, align 1
  %157 = call i64 @isspace(i8 zeroext %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load i8*, i8** %9, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %9, align 8
  br label %154

162:                                              ; preds = %154
  br label %171

163:                                              ; preds = %146, %142, %135
  %164 = load i32, i32* @ERROR, align 4
  %165 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %166 = call i32 @errcode(i32 %165)
  %167 = load i8*, i8** %15, align 8
  %168 = load i8*, i8** %16, align 8
  %169 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %167, i8* %168)
  %170 = call i32 @ereport(i32 %164, i32 %169)
  br label %171

171:                                              ; preds = %163, %162
  br label %125

172:                                              ; preds = %125
  %173 = load i8**, i8*** %14, align 8
  %174 = icmp ne i8** %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i8*, i8** %9, align 8
  %177 = load i8**, i8*** %14, align 8
  store i8* %176, i8** %177, align 8
  br label %192

178:                                              ; preds = %172
  %179 = load i8*, i8** %9, align 8
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %178
  %184 = load i32, i32* @ERROR, align 4
  %185 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %186 = call i32 @errcode(i32 %185)
  %187 = load i8*, i8** %15, align 8
  %188 = load i8*, i8** %16, align 8
  %189 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %187, i8* %188)
  %190 = call i32 @ereport(i32 %184, i32 %189)
  br label %191

191:                                              ; preds = %183, %178
  br label %192

192:                                              ; preds = %191, %175
  ret void
}

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @pair_decode(i8*, i32*, i32*, i8**, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
