; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_idmap.c_config_parse_pair.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_idmap.c_config_parse_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_pair = type { i8*, i32, i8*, i32 }

@NO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"missing '='\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"empty key\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"end of line looking for value\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"no matching '\22'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.config_pair*)* @config_parse_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_parse_pair(i8* %0, %struct.config_pair* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.config_pair*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.config_pair* %1, %struct.config_pair** %4, align 8
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %5, align 8
  %8 = load i32, i32* @NO_ERROR, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @strchr(i8* %9, i8 signext 35)
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  store i8 0, i8* %14, align 1
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i8*, i8** %3, align 8
  store i8* %16, i8** %5, align 8
  br label %17

17:                                               ; preds = %22, %15
  %18 = load i8*, i8** %5, align 8
  %19 = load i8, i8* %18, align 1
  %20 = call i64 @isspace(i8 signext %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %5, align 8
  br label %17

25:                                               ; preds = %17
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.config_pair*, %struct.config_pair** %4, align 8
  %28 = getelementptr inbounds %struct.config_pair, %struct.config_pair* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i8* @strchr(i8* %29, i8 signext 61)
  store i8* %30, i8** %5, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = call i32 @eprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %35, i32* %6, align 4
  br label %182

36:                                               ; preds = %25
  %37 = load i8*, i8** %5, align 8
  %38 = load %struct.config_pair*, %struct.config_pair** %4, align 8
  %39 = getelementptr inbounds %struct.config_pair, %struct.config_pair* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = ptrtoint i8* %37 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = trunc i64 %43 to i32
  %45 = load %struct.config_pair*, %struct.config_pair** %4, align 8
  %46 = getelementptr inbounds %struct.config_pair, %struct.config_pair* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %67, %36
  %48 = load %struct.config_pair*, %struct.config_pair** %4, align 8
  %49 = getelementptr inbounds %struct.config_pair, %struct.config_pair* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  %53 = load %struct.config_pair*, %struct.config_pair** %4, align 8
  %54 = getelementptr inbounds %struct.config_pair, %struct.config_pair* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.config_pair*, %struct.config_pair** %4, align 8
  %57 = getelementptr inbounds %struct.config_pair, %struct.config_pair* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %55, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = call i64 @isspace(i8 signext %62)
  %64 = icmp ne i64 %63, 0
  br label %65

65:                                               ; preds = %52, %47
  %66 = phi i1 [ false, %47 ], [ %64, %52 ]
  br i1 %66, label %67, label %72

67:                                               ; preds = %65
  %68 = load %struct.config_pair*, %struct.config_pair** %4, align 8
  %69 = getelementptr inbounds %struct.config_pair, %struct.config_pair* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %69, align 8
  br label %47

72:                                               ; preds = %65
  %73 = load %struct.config_pair*, %struct.config_pair** %4, align 8
  %74 = getelementptr inbounds %struct.config_pair, %struct.config_pair* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp sle i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = call i32 @eprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %79, i32* %6, align 4
  br label %182

80:                                               ; preds = %72
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %5, align 8
  br label %83

83:                                               ; preds = %88, %80
  %84 = load i8*, i8** %5, align 8
  %85 = load i8, i8* %84, align 1
  %86 = call i64 @isspace(i8 signext %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %5, align 8
  br label %83

91:                                               ; preds = %83
  %92 = load i8*, i8** %5, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = call i32 @eprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %98 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %98, i32* %6, align 4
  br label %182

99:                                               ; preds = %91
  %100 = load i8*, i8** %5, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 34
  br i1 %103, label %104, label %129

104:                                              ; preds = %99
  %105 = load i8*, i8** %5, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  %107 = load %struct.config_pair*, %struct.config_pair** %4, align 8
  %108 = getelementptr inbounds %struct.config_pair, %struct.config_pair* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  %109 = load %struct.config_pair*, %struct.config_pair** %4, align 8
  %110 = getelementptr inbounds %struct.config_pair, %struct.config_pair* %109, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  %112 = call i8* @strchr(i8* %111, i8 signext 34)
  store i8* %112, i8** %5, align 8
  %113 = load i8*, i8** %5, align 8
  %114 = icmp eq i8* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %104
  %116 = call i32 @eprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %117 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %117, i32* %6, align 4
  br label %182

118:                                              ; preds = %104
  %119 = load i8*, i8** %5, align 8
  %120 = load %struct.config_pair*, %struct.config_pair** %4, align 8
  %121 = getelementptr inbounds %struct.config_pair, %struct.config_pair* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = ptrtoint i8* %119 to i64
  %124 = ptrtoint i8* %122 to i64
  %125 = sub i64 %123, %124
  %126 = trunc i64 %125 to i32
  %127 = load %struct.config_pair*, %struct.config_pair** %4, align 8
  %128 = getelementptr inbounds %struct.config_pair, %struct.config_pair* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 8
  br label %165

129:                                              ; preds = %99
  %130 = load i8*, i8** %5, align 8
  %131 = load %struct.config_pair*, %struct.config_pair** %4, align 8
  %132 = getelementptr inbounds %struct.config_pair, %struct.config_pair* %131, i32 0, i32 2
  store i8* %130, i8** %132, align 8
  %133 = load %struct.config_pair*, %struct.config_pair** %4, align 8
  %134 = getelementptr inbounds %struct.config_pair, %struct.config_pair* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @strlen(i8* %135)
  %137 = load %struct.config_pair*, %struct.config_pair** %4, align 8
  %138 = getelementptr inbounds %struct.config_pair, %struct.config_pair* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 8
  br label %139

139:                                              ; preds = %159, %129
  %140 = load %struct.config_pair*, %struct.config_pair** %4, align 8
  %141 = getelementptr inbounds %struct.config_pair, %struct.config_pair* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %139
  %145 = load %struct.config_pair*, %struct.config_pair** %4, align 8
  %146 = getelementptr inbounds %struct.config_pair, %struct.config_pair* %145, i32 0, i32 2
  %147 = load i8*, i8** %146, align 8
  %148 = load %struct.config_pair*, %struct.config_pair** %4, align 8
  %149 = getelementptr inbounds %struct.config_pair, %struct.config_pair* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = sub nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %147, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = call i64 @isspace(i8 signext %154)
  %156 = icmp ne i64 %155, 0
  br label %157

157:                                              ; preds = %144, %139
  %158 = phi i1 [ false, %139 ], [ %156, %144 ]
  br i1 %158, label %159, label %164

159:                                              ; preds = %157
  %160 = load %struct.config_pair*, %struct.config_pair** %4, align 8
  %161 = getelementptr inbounds %struct.config_pair, %struct.config_pair* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %161, align 8
  br label %139

164:                                              ; preds = %157
  br label %165

165:                                              ; preds = %164, %118
  %166 = load %struct.config_pair*, %struct.config_pair** %4, align 8
  %167 = getelementptr inbounds %struct.config_pair, %struct.config_pair* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = load %struct.config_pair*, %struct.config_pair** %4, align 8
  %170 = getelementptr inbounds %struct.config_pair, %struct.config_pair* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %168, i64 %172
  store i8 0, i8* %173, align 1
  %174 = load %struct.config_pair*, %struct.config_pair** %4, align 8
  %175 = getelementptr inbounds %struct.config_pair, %struct.config_pair* %174, i32 0, i32 2
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.config_pair*, %struct.config_pair** %4, align 8
  %178 = getelementptr inbounds %struct.config_pair, %struct.config_pair* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %176, i64 %180
  store i8 0, i8* %181, align 1
  br label %182

182:                                              ; preds = %165, %115, %96, %77, %33
  %183 = load i32, i32* %6, align 4
  ret i32 %183
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
