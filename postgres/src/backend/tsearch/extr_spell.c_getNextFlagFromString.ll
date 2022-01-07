; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_spell.c_getNextFlagFromString.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_spell.c_getNextFlagFromString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@errno = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_CONFIG_FILE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"invalid affix flag \22%s\22\00", align 1
@FLAGNUM_MAXSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"affix flag \22%s\22 is out of range\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%0d\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"invalid character in affix flag \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"unrecognized type of Conf->flagMode: %d\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"invalid affix flag \22%s\22 with \22long\22 flag value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8**, i8*)* @getNextFlagFromString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getNextFlagFromString(%struct.TYPE_3__* %0, i8** %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i8**, i8*** %5, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 129
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 2, i32 1
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %170, %3
  %22 = load i8**, i8*** %5, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %171

26:                                               ; preds = %21
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %160 [
    i32 129, label %30
    i32 130, label %30
    i32 128, label %53
  ]

30:                                               ; preds = %26, %26
  %31 = load i8*, i8** %6, align 8
  %32 = load i8**, i8*** %5, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @COPYCHAR(i8* %31, i8* %33)
  %35 = load i8**, i8*** %5, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @pg_mblen(i8* %36)
  %38 = load i8*, i8** %6, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %6, align 8
  %41 = load i8**, i8*** %5, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @pg_mblen(i8* %42)
  %44 = load i8**, i8*** %5, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = sext i32 %43 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %44, align 8
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %11, align 4
  br label %166

53:                                               ; preds = %26
  %54 = load i8**, i8*** %5, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @strtol(i8* %55, i8** %8, i32 10)
  store i32 %56, i32* %7, align 4
  %57 = load i8**, i8*** %5, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = icmp eq i8* %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %53
  %62 = load i32, i32* @errno, align 4
  %63 = load i32, i32* @ERANGE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %61, %53
  %66 = load i32, i32* @ERROR, align 4
  %67 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %68 = call i32 @errcode(i32 %67)
  %69 = load i8**, i8*** %5, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %70)
  %72 = call i32 @ereport(i32 %66, i32 %71)
  br label %73

73:                                               ; preds = %65, %61
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @FLAGNUM_MAXSIZE, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %76, %73
  %81 = load i32, i32* @ERROR, align 4
  %82 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %83 = call i32 @errcode(i32 %82)
  %84 = load i8**, i8*** %5, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %85)
  %87 = call i32 @ereport(i32 %81, i32 %86)
  br label %88

88:                                               ; preds = %80, %76
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @sprintf(i8* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = load i8*, i8** %6, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8* %94, i8** %6, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = load i8**, i8*** %5, align 8
  store i8* %95, i8** %96, align 8
  br label %97

97:                                               ; preds = %151, %88
  %98 = load i8**, i8*** %5, align 8
  %99 = load i8*, i8** %98, align 8
  %100 = load i8, i8* %99, align 1
  %101 = icmp ne i8 %100, 0
  br i1 %101, label %102, label %159

102:                                              ; preds = %97
  %103 = load i8**, i8*** %5, align 8
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @t_isdigit(i8* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %102
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* @ERROR, align 4
  %112 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %113 = call i32 @errcode(i32 %112)
  %114 = load i8**, i8*** %5, align 8
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %115)
  %117 = call i32 @ereport(i32 %111, i32 %116)
  br label %118

118:                                              ; preds = %110, %107
  br label %159

119:                                              ; preds = %102
  %120 = load i8**, i8*** %5, align 8
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @t_iseq(i8* %121, i8 signext 44)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %119
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %124
  %128 = load i32, i32* @ERROR, align 4
  %129 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %130 = call i32 @errcode(i32 %129)
  %131 = load i8**, i8*** %5, align 8
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %132)
  %134 = call i32 @ereport(i32 %128, i32 %133)
  br label %135

135:                                              ; preds = %127, %124
  store i32 1, i32* %12, align 4
  br label %150

136:                                              ; preds = %119
  %137 = load i8**, i8*** %5, align 8
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @t_isspace(i8* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %149, label %141

141:                                              ; preds = %136
  %142 = load i32, i32* @ERROR, align 4
  %143 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %144 = call i32 @errcode(i32 %143)
  %145 = load i8**, i8*** %5, align 8
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %146)
  %148 = call i32 @ereport(i32 %142, i32 %147)
  br label %149

149:                                              ; preds = %141, %136
  br label %150

150:                                              ; preds = %149, %135
  br label %151

151:                                              ; preds = %150
  %152 = load i8**, i8*** %5, align 8
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @pg_mblen(i8* %153)
  %155 = load i8**, i8*** %5, align 8
  %156 = load i8*, i8** %155, align 8
  %157 = sext i32 %154 to i64
  %158 = getelementptr inbounds i8, i8* %156, i64 %157
  store i8* %158, i8** %155, align 8
  br label %97

159:                                              ; preds = %118, %97
  store i32 1, i32* %11, align 4
  br label %166

160:                                              ; preds = %26
  %161 = load i32, i32* @ERROR, align 4
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @elog(i32 %161, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %164)
  br label %166

166:                                              ; preds = %160, %159, %30
  %167 = load i32, i32* %11, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  br label %171

170:                                              ; preds = %166
  br label %21

171:                                              ; preds = %169, %21
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 129
  br i1 %175, label %176, label %186

176:                                              ; preds = %171
  %177 = load i32, i32* %10, align 4
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %176
  %180 = load i32, i32* @ERROR, align 4
  %181 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %182 = call i32 @errcode(i32 %181)
  %183 = load i8*, i8** %9, align 8
  %184 = call i32 @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i8* %183)
  %185 = call i32 @ereport(i32 %180, i32 %184)
  br label %186

186:                                              ; preds = %179, %176, %171
  %187 = load i8*, i8** %6, align 8
  store i8 0, i8* %187, align 1
  ret void
}

declare dso_local i32 @COPYCHAR(i8*, i8*) #1

declare dso_local i32 @pg_mblen(i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @t_isdigit(i8*) #1

declare dso_local i32 @t_iseq(i8*, i8 signext) #1

declare dso_local i32 @t_isspace(i8*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
