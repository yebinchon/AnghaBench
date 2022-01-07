; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_formatting.c_from_char_parse_int_len.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_formatting.c_from_char_parse_int_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }

@DCH_MAX_ITEM_SIZ = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_DATETIME_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"source string too short for \22%s\22 formatting field\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Field requires %d characters, but only %d remain.\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"If your source string is not fixed-width, try using the \22FM\22 modifier.\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"invalid value \22%s\22 for \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"Field requires %d characters, but only %d could be parsed.\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Value must be an integer.\00", align 1
@ERANGE = common dso_local global i64 0, align 8
@INT_MIN = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@ERRCODE_DATETIME_VALUE_OUT_OF_RANGE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [48 x i8] c"value for \22%s\22 in source string is out of range\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Value must be in the range %d to %d.\00", align 1
@CHECK_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i32, %struct.TYPE_7__*, i32*)* @from_char_parse_int_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @from_char_parse_int_len(i32* %0, i8** %1, i32 %2, %struct.TYPE_7__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load i32, i32* @DCH_MAX_ITEM_SIZ, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %13, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %14, align 8
  %24 = load i8**, i8*** %8, align 8
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %15, align 8
  %26 = load i8**, i8*** %8, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strspace_len(i8* %27)
  %29 = load i8**, i8*** %8, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = sext i32 %28 to i64
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8* %32, i8** %29, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @DCH_MAX_ITEM_SIZ, align 4
  %35 = icmp sle i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @Assert(i32 %36)
  %38 = load i8**, i8*** %8, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i64 @strlcpy(i8* %23, i8* %39, i32 %41)
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %16, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @S_FM(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %5
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %51 = call i64 @is_next_separator(%struct.TYPE_7__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49, %5
  store i64 0, i64* @errno, align 8
  %54 = load i8*, i8** %15, align 8
  %55 = load i8**, i8*** %8, align 8
  %56 = call i64 @strtol(i8* %54, i8** %55, i32 10)
  store i64 %56, i64* %12, align 8
  br label %114

57:                                               ; preds = %49
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %57
  %62 = load i32, i32* @ERROR, align 4
  %63 = load i32, i32* @ERRCODE_INVALID_DATETIME_FORMAT, align 4
  %64 = call i32 @errcode(i32 %63)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %71)
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %16, align 4
  %75 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %74)
  %76 = call i32 @errhint(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0))
  %77 = call i32 @ereport(i32 %62, i32 %76)
  %78 = call i32 @RETURN_ERROR(i32 %77)
  br label %79

79:                                               ; preds = %61, %57
  store i64 0, i64* @errno, align 8
  %80 = call i64 @strtol(i8* %23, i8** %17, i32 10)
  store i64 %80, i64* %12, align 8
  %81 = load i8*, i8** %17, align 8
  %82 = ptrtoint i8* %81 to i64
  %83 = ptrtoint i8* %23 to i64
  %84 = sub i64 %82, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %16, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %79
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %88
  %93 = load i32, i32* @ERROR, align 4
  %94 = load i32, i32* @ERRCODE_INVALID_DATETIME_FORMAT, align 4
  %95 = call i32 @errcode(i32 %94)
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %23, i32 %100)
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %16, align 4
  %104 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %102, i32 %103)
  %105 = call i32 @errhint(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0))
  %106 = call i32 @ereport(i32 %93, i32 %105)
  %107 = call i32 @RETURN_ERROR(i32 %106)
  br label %108

108:                                              ; preds = %92, %88, %79
  %109 = load i32, i32* %16, align 4
  %110 = load i8**, i8*** %8, align 8
  %111 = load i8*, i8** %110, align 8
  %112 = sext i32 %109 to i64
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  store i8* %113, i8** %110, align 8
  br label %114

114:                                              ; preds = %108, %53
  %115 = load i8**, i8*** %8, align 8
  %116 = load i8*, i8** %115, align 8
  %117 = load i8*, i8** %15, align 8
  %118 = icmp eq i8* %116, %117
  br i1 %118, label %119, label %132

119:                                              ; preds = %114
  %120 = load i32, i32* @ERROR, align 4
  %121 = load i32, i32* @ERRCODE_INVALID_DATETIME_FORMAT, align 4
  %122 = call i32 @errcode(i32 %121)
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %23, i32 %127)
  %129 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %130 = call i32 @ereport(i32 %120, i32 %129)
  %131 = call i32 @RETURN_ERROR(i32 %130)
  br label %132

132:                                              ; preds = %119, %114
  %133 = load i64, i64* @errno, align 8
  %134 = load i64, i64* @ERANGE, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %144, label %136

136:                                              ; preds = %132
  %137 = load i64, i64* %12, align 8
  %138 = load i64, i64* @INT_MIN, align 8
  %139 = icmp slt i64 %137, %138
  br i1 %139, label %144, label %140

140:                                              ; preds = %136
  %141 = load i64, i64* %12, align 8
  %142 = load i64, i64* @INT_MAX, align 8
  %143 = icmp sgt i64 %141, %142
  br i1 %143, label %144, label %161

144:                                              ; preds = %140, %136, %132
  %145 = load i32, i32* @ERROR, align 4
  %146 = load i32, i32* @ERRCODE_DATETIME_VALUE_OUT_OF_RANGE, align 4
  %147 = call i32 @errcode(i32 %146)
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = inttoptr i64 %153 to i8*
  %155 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i8* %154)
  %156 = load i64, i64* @INT_MIN, align 8
  %157 = load i64, i64* @INT_MAX, align 8
  %158 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i64 %156, i64 %157)
  %159 = call i32 @ereport(i32 %145, i32 %158)
  %160 = call i32 @RETURN_ERROR(i32 %159)
  br label %161

161:                                              ; preds = %144, %140
  %162 = load i32*, i32** %7, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %172

164:                                              ; preds = %161
  %165 = load i32*, i32** %7, align 8
  %166 = load i64, i64* %12, align 8
  %167 = trunc i64 %166 to i32
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %169 = load i32*, i32** %11, align 8
  %170 = call i32 @from_char_set_int(i32* %165, i32 %167, %struct.TYPE_7__* %168, i32* %169)
  %171 = load i32, i32* @CHECK_ERROR, align 4
  br label %172

172:                                              ; preds = %164, %161
  %173 = load i8**, i8*** %8, align 8
  %174 = load i8*, i8** %173, align 8
  %175 = load i8*, i8** %15, align 8
  %176 = ptrtoint i8* %174 to i64
  %177 = ptrtoint i8* %175 to i64
  %178 = sub i64 %176, %177
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %181

180:                                              ; No predecessors!
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %181

181:                                              ; preds = %180, %172
  %182 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %182)
  %183 = load i32, i32* %6, align 4
  ret i32 %183
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strspace_len(i8*) #2

declare dso_local i32 @Assert(i32) #2

declare dso_local i64 @strlcpy(i8*, i8*, i32) #2

declare dso_local i64 @S_FM(i32) #2

declare dso_local i64 @is_next_separator(%struct.TYPE_7__*) #2

declare dso_local i64 @strtol(i8*, i8**, i32) #2

declare dso_local i32 @RETURN_ERROR(i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, i8*, ...) #2

declare dso_local i32 @errdetail(i8*, ...) #2

declare dso_local i32 @errhint(i8*) #2

declare dso_local i32 @from_char_set_int(i32*, i32, %struct.TYPE_7__*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
