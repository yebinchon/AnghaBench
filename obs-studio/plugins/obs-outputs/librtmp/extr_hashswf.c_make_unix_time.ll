; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_hashswf.c_make_unix_time.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_hashswf.c_make_unix_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i8*, i64, i8* }

@monthtab = common dso_local global i32* null, align 8
@tzchecked = common dso_local global i32 0, align 4
@JAN02_1980 = common dso_local global i32 0, align 4
@tzoff = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @make_unix_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_unix_time(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tm, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tm*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 1900, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 3
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 32
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  %18 = load i8*, i8** %2, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 3
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 44
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %23, %17
  br label %25

25:                                               ; preds = %24, %1
  %26 = load i8*, i8** %2, align 8
  store i8* %26, i8** %8, align 8
  br label %27

27:                                               ; preds = %44, %25
  %28 = load i8*, i8** %8, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %27
  %32 = load i8*, i8** %8, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 45
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %8, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 58
  br i1 %40, label %41, label %43

41:                                               ; preds = %36, %31
  %42 = load i8*, i8** %8, align 8
  store i8 32, i8* %42, align 1
  br label %43

43:                                               ; preds = %41, %36
  br label %44

44:                                               ; preds = %43
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %8, align 8
  br label %27

47:                                               ; preds = %27
  %48 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load i8*, i8** %2, align 8
  %50 = call i8* @strchr(i8* %49, i8 signext 32)
  store i8* %50, i8** %8, align 8
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %81

53:                                               ; preds = %47
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = call i8* @strtol(i8* %55, i8** %8, i32 0)
  %57 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 6
  store i8* %56, i8** %57, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  store i8* %59, i8** %7, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = call i8* @strchr(i8* %60, i8 signext 32)
  store i8* %61, i8** %8, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = call i8* @strtol(i8* %63, i8** %8, i32 0)
  %65 = ptrtoint i8* %64 to i32
  %66 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 1
  store i32 %65, i32* %66, align 4
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = call i8* @strtol(i8* %68, i8** %8, i32 0)
  %70 = ptrtoint i8* %69 to i32
  %71 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 2
  store i32 %70, i32* %71, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = call i8* @strtol(i8* %73, i8** %8, i32 0)
  %75 = ptrtoint i8* %74 to i32
  %76 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 3
  store i32 %75, i32* %76, align 4
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = call i8* @strtol(i8* %78, i8** null, i32 0)
  %80 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 4
  store i8* %79, i8** %80, align 8
  br label %117

81:                                               ; preds = %47
  %82 = load i8*, i8** %8, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  store i8* %83, i8** %7, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = call i8* @strchr(i8* %84, i8 signext 32)
  store i8* %85, i8** %8, align 8
  br label %86

86:                                               ; preds = %91, %81
  %87 = load i8*, i8** %8, align 8
  %88 = load i8, i8* %87, align 1
  %89 = call i64 @isspace(i8 signext %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i8*, i8** %8, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %8, align 8
  br label %86

94:                                               ; preds = %86
  %95 = load i8*, i8** %8, align 8
  %96 = call i8* @strtol(i8* %95, i8** %8, i32 0)
  %97 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 6
  store i8* %96, i8** %97, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = call i8* @strtol(i8* %99, i8** %8, i32 0)
  %101 = ptrtoint i8* %100 to i32
  %102 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 2
  store i32 %101, i32* %102, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = call i8* @strtol(i8* %104, i8** %8, i32 0)
  %106 = ptrtoint i8* %105 to i32
  %107 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 3
  store i32 %106, i32* %107, align 4
  %108 = load i8*, i8** %8, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = call i8* @strtol(i8* %109, i8** %8, i32 0)
  %111 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 4
  store i8* %110, i8** %111, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  %114 = call i8* @strtol(i8* %113, i8** null, i32 0)
  %115 = ptrtoint i8* %114 to i32
  %116 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 1
  store i32 %115, i32* %116, align 4
  br label %117

117:                                              ; preds = %94, %53
  %118 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp sgt i32 %119, 100
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i32, i32* %5, align 4
  %123 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %124, %122
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %121, %117
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %143, %126
  %128 = load i32, i32* %4, align 4
  %129 = icmp slt i32 %128, 12
  br i1 %129, label %130, label %146

130:                                              ; preds = %127
  %131 = load i8*, i8** %7, align 8
  %132 = load i32*, i32** @monthtab, align 8
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @strncasecmp(i8* %131, i32 %136, i32 3)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %130
  %140 = load i32, i32* %4, align 4
  %141 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 0
  store i32 %140, i32* %141, align 8
  br label %146

142:                                              ; preds = %130
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %4, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %4, align 4
  br label %127

146:                                              ; preds = %139, %127
  %147 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 5
  store i64 0, i64* %147, align 8
  %148 = load i32, i32* @tzchecked, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %168, label %150

150:                                              ; preds = %146
  %151 = load i32, i32* @JAN02_1980, align 4
  store i32 %151, i32* %11, align 4
  %152 = call %struct.tm* @localtime(i32* %11)
  store %struct.tm* %152, %struct.tm** %10, align 8
  %153 = load %struct.tm*, %struct.tm** %10, align 8
  %154 = getelementptr inbounds %struct.tm, %struct.tm* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = sub nsw i32 12, %155
  %157 = mul nsw i32 %156, 3600
  %158 = load %struct.tm*, %struct.tm** %10, align 8
  %159 = getelementptr inbounds %struct.tm, %struct.tm* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 %160, 60
  %162 = add nsw i32 %157, %161
  %163 = load %struct.tm*, %struct.tm** %10, align 8
  %164 = getelementptr inbounds %struct.tm, %struct.tm* %163, i32 0, i32 4
  %165 = load i8*, i8** %164, align 8
  %166 = sext i32 %162 to i64
  %167 = getelementptr i8, i8* %165, i64 %166
  store i8* %167, i8** @tzoff, align 8
  store i32 1, i32* @tzchecked, align 4
  br label %168

168:                                              ; preds = %150, %146
  %169 = call i32 @mktime(%struct.tm* %3)
  store i32 %169, i32* %9, align 4
  %170 = load i32, i32* %9, align 4
  %171 = icmp ne i32 %170, -1
  br i1 %171, label %172, label %178

172:                                              ; preds = %168
  %173 = load i8*, i8** @tzoff, align 8
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr i8, i8* %173, i64 %175
  %177 = ptrtoint i8* %176 to i32
  store i32 %177, i32* %9, align 4
  br label %178

178:                                              ; preds = %172, %168
  %179 = load i32, i32* %9, align 4
  ret i32 %179
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strtol(i8*, i8**, i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @strncasecmp(i8*, i32, i32) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @mktime(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
