; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_DecodeTime.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_DecodeTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_tm = type { i32, i32, i32 }

@DTK_TIME_M = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@DTERR_FIELD_OVERFLOW = common dso_local global i32 0, align 4
@DTERR_BAD_FORMAT = common dso_local global i32 0, align 4
@MINUTE = common dso_local global i32 0, align 4
@SECOND = common dso_local global i32 0, align 4
@MINS_PER_HOUR = common dso_local global i32 0, align 4
@SECS_PER_MINUTE = common dso_local global i32 0, align 4
@USECS_PER_SEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32*, %struct.pg_tm*, i64*)* @DecodeTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodeTime(i8* %0, i32 %1, i32 %2, i32* %3, %struct.pg_tm* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.pg_tm*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store %struct.pg_tm* %4, %struct.pg_tm** %12, align 8
  store i64* %5, i64** %13, align 8
  %16 = load i32, i32* @DTK_TIME_M, align 4
  %17 = load i32*, i32** %11, align 8
  store i32 %16, i32* %17, align 4
  store i64 0, i64* @errno, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i8* @strtoint(i8* %18, i8** %14, i32 10)
  %20 = ptrtoint i8* %19 to i32
  %21 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %22 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i64, i64* @errno, align 8
  %24 = load i64, i64* @ERANGE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* @DTERR_FIELD_OVERFLOW, align 4
  store i32 %27, i32* %7, align 4
  br label %190

28:                                               ; preds = %6
  %29 = load i8*, i8** %14, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 58
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %34, i32* %7, align 4
  br label %190

35:                                               ; preds = %28
  store i64 0, i64* @errno, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = call i8* @strtoint(i8* %37, i8** %14, i32 10)
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %41 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @ERANGE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* @DTERR_FIELD_OVERFLOW, align 4
  store i32 %46, i32* %7, align 4
  br label %190

47:                                               ; preds = %35
  %48 = load i8*, i8** %14, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %77

52:                                               ; preds = %47
  %53 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %54 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %53, i32 0, i32 2
  store i32 0, i32* %54, align 4
  %55 = load i64*, i64** %13, align 8
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @MINUTE, align 4
  %58 = call i32 @INTERVAL_MASK(i32 %57)
  %59 = load i32, i32* @SECOND, align 4
  %60 = call i32 @INTERVAL_MASK(i32 %59)
  %61 = or i32 %58, %60
  %62 = icmp eq i32 %56, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %52
  %64 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %65 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %68 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %70 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %73 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %75 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %74, i32 0, i32 0
  store i32 0, i32* %75, align 4
  br label %76

76:                                               ; preds = %63, %52
  br label %149

77:                                               ; preds = %47
  %78 = load i8*, i8** %14, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 46
  br i1 %81, label %82, label %103

82:                                               ; preds = %77
  %83 = load i8*, i8** %14, align 8
  %84 = load i64*, i64** %13, align 8
  %85 = call i32 @ParseFractionalSecond(i8* %83, i64* %84)
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* %15, align 4
  store i32 %89, i32* %7, align 4
  br label %190

90:                                               ; preds = %82
  %91 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %92 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %95 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %97 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %100 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %102 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %101, i32 0, i32 0
  store i32 0, i32* %102, align 4
  br label %148

103:                                              ; preds = %77
  %104 = load i8*, i8** %14, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 58
  br i1 %107, label %108, label %145

108:                                              ; preds = %103
  store i64 0, i64* @errno, align 8
  %109 = load i8*, i8** %14, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  %111 = call i8* @strtoint(i8* %110, i8** %14, i32 10)
  %112 = ptrtoint i8* %111 to i32
  %113 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %114 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 4
  %115 = load i64, i64* @errno, align 8
  %116 = load i64, i64* @ERANGE, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %108
  %119 = load i32, i32* @DTERR_FIELD_OVERFLOW, align 4
  store i32 %119, i32* %7, align 4
  br label %190

120:                                              ; preds = %108
  %121 = load i8*, i8** %14, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i64*, i64** %13, align 8
  store i64 0, i64* %126, align 8
  br label %144

127:                                              ; preds = %120
  %128 = load i8*, i8** %14, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 46
  br i1 %131, label %132, label %141

132:                                              ; preds = %127
  %133 = load i8*, i8** %14, align 8
  %134 = load i64*, i64** %13, align 8
  %135 = call i32 @ParseFractionalSecond(i8* %133, i64* %134)
  store i32 %135, i32* %15, align 4
  %136 = load i32, i32* %15, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = load i32, i32* %15, align 4
  store i32 %139, i32* %7, align 4
  br label %190

140:                                              ; preds = %132
  br label %143

141:                                              ; preds = %127
  %142 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %142, i32* %7, align 4
  br label %190

143:                                              ; preds = %140
  br label %144

144:                                              ; preds = %143, %125
  br label %147

145:                                              ; preds = %103
  %146 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %146, i32* %7, align 4
  br label %190

147:                                              ; preds = %144
  br label %148

148:                                              ; preds = %147, %90
  br label %149

149:                                              ; preds = %148, %76
  %150 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %151 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %187, label %154

154:                                              ; preds = %149
  %155 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %156 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %187, label %159

159:                                              ; preds = %154
  %160 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %161 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @MINS_PER_HOUR, align 4
  %164 = sub nsw i32 %163, 1
  %165 = icmp sgt i32 %162, %164
  br i1 %165, label %187, label %166

166:                                              ; preds = %159
  %167 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %168 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %187, label %171

171:                                              ; preds = %166
  %172 = load %struct.pg_tm*, %struct.pg_tm** %12, align 8
  %173 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @SECS_PER_MINUTE, align 4
  %176 = icmp sgt i32 %174, %175
  br i1 %176, label %187, label %177

177:                                              ; preds = %171
  %178 = load i64*, i64** %13, align 8
  %179 = load i64, i64* %178, align 8
  %180 = call i64 @INT64CONST(i32 0)
  %181 = icmp slt i64 %179, %180
  br i1 %181, label %187, label %182

182:                                              ; preds = %177
  %183 = load i64*, i64** %13, align 8
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @USECS_PER_SEC, align 8
  %186 = icmp sgt i64 %184, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %182, %177, %171, %166, %159, %154, %149
  %188 = load i32, i32* @DTERR_FIELD_OVERFLOW, align 4
  store i32 %188, i32* %7, align 4
  br label %190

189:                                              ; preds = %182
  store i32 0, i32* %7, align 4
  br label %190

190:                                              ; preds = %189, %187, %145, %141, %138, %118, %88, %45, %33, %26
  %191 = load i32, i32* %7, align 4
  ret i32 %191
}

declare dso_local i8* @strtoint(i8*, i8**, i32) #1

declare dso_local i32 @INTERVAL_MASK(i32) #1

declare dso_local i32 @ParseFractionalSecond(i8*, i64*) #1

declare dso_local i64 @INT64CONST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
