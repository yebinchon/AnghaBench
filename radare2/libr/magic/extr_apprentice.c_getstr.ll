; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_getstr.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_getstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"string too long: `%s'\00", align 1
@FILE_COMPILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"incomplete escape\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"escaped tab found, use \\t instead\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"no need to escape `%c'\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"unknown escape sequence: \\%03o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i8*, i32, i32*, i32)* @getstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getstr(i32* %0, i8* %1, i8* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load i8*, i8** %9, align 8
  store i8* %19, i8** %14, align 8
  %20 = load i8*, i8** %10, align 8
  store i8* %20, i8** %15, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = getelementptr inbounds i8, i8* %24, i64 -1
  store i8* %25, i8** %16, align 8
  br label %26

26:                                               ; preds = %200, %6
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %9, align 8
  %29 = load i8, i8* %27, align 1
  %30 = sext i8 %29 to i32
  store i32 %30, i32* %17, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %201

32:                                               ; preds = %26
  %33 = load i32, i32* %17, align 4
  %34 = call i64 @isspace(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %201

37:                                               ; preds = %32
  %38 = load i8*, i8** %10, align 8
  %39 = load i8*, i8** %16, align 8
  %40 = icmp uge i8* %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32*, i32** %8, align 8
  %43 = load i8*, i8** %14, align 8
  %44 = call i32 @file_error(i32* %42, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %43)
  store i8* null, i8** %7, align 8
  br label %212

45:                                               ; preds = %37
  %46 = load i32, i32* %17, align 4
  %47 = icmp eq i32 %46, 92
  br i1 %47, label %48, label %195

48:                                               ; preds = %45
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %9, align 8
  %51 = load i8, i8* %49, align 1
  %52 = sext i8 %51 to i32
  store i32 %52, i32* %17, align 4
  switch i32 %52, label %71 [
    i32 0, label %53
    i32 9, label %61
    i32 32, label %89
    i32 62, label %89
    i32 60, label %89
    i32 38, label %89
    i32 94, label %89
    i32 61, label %89
    i32 33, label %89
    i32 92, label %89
    i32 97, label %94
    i32 98, label %97
    i32 102, label %100
    i32 110, label %103
    i32 114, label %106
    i32 116, label %109
    i32 118, label %112
    i32 48, label %115
    i32 49, label %115
    i32 50, label %115
    i32 51, label %115
    i32 52, label %115
    i32 53, label %115
    i32 54, label %115
    i32 55, label %115
    i32 120, label %160
  ]

53:                                               ; preds = %48
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @FILE_COMPILE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 (i32*, i8*, ...) @file_magwarn(i32* %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %53
  br label %202

61:                                               ; preds = %48
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @FILE_COMPILE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 (i32*, i8*, ...) @file_magwarn(i32* %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %65, %61
  br label %71

71:                                               ; preds = %48, %70
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @FILE_COMPILE, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %71
  %76 = load i32, i32* %17, align 4
  %77 = call i32 @isprint(i32 %76) #3
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %17, align 4
  %82 = call i32 (i32*, i8*, ...) @file_magwarn(i32* %80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  br label %87

83:                                               ; preds = %75
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %17, align 4
  %86 = call i32 (i32*, i8*, ...) @file_magwarn(i32* %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %83, %79
  br label %88

88:                                               ; preds = %87, %71
  br label %89

89:                                               ; preds = %48, %48, %48, %48, %48, %48, %48, %48, %88
  %90 = load i32, i32* %17, align 4
  %91 = trunc i32 %90 to i8
  %92 = load i8*, i8** %10, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %10, align 8
  store i8 %91, i8* %92, align 1
  br label %194

94:                                               ; preds = %48
  %95 = load i8*, i8** %10, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %10, align 8
  store i8 7, i8* %95, align 1
  br label %194

97:                                               ; preds = %48
  %98 = load i8*, i8** %10, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %10, align 8
  store i8 8, i8* %98, align 1
  br label %194

100:                                              ; preds = %48
  %101 = load i8*, i8** %10, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %10, align 8
  store i8 12, i8* %101, align 1
  br label %194

103:                                              ; preds = %48
  %104 = load i8*, i8** %10, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %10, align 8
  store i8 10, i8* %104, align 1
  br label %194

106:                                              ; preds = %48
  %107 = load i8*, i8** %10, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %10, align 8
  store i8 13, i8* %107, align 1
  br label %194

109:                                              ; preds = %48
  %110 = load i8*, i8** %10, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %10, align 8
  store i8 9, i8* %110, align 1
  br label %194

112:                                              ; preds = %48
  %113 = load i8*, i8** %10, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %10, align 8
  store i8 11, i8* %113, align 1
  br label %194

115:                                              ; preds = %48, %48, %48, %48, %48, %48, %48, %48
  %116 = load i32, i32* %17, align 4
  %117 = sub nsw i32 %116, 48
  store i32 %117, i32* %18, align 4
  %118 = load i8*, i8** %9, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %9, align 8
  %120 = load i8, i8* %118, align 1
  %121 = sext i8 %120 to i32
  store i32 %121, i32* %17, align 4
  %122 = load i32, i32* %17, align 4
  %123 = icmp sge i32 %122, 48
  br i1 %123, label %124, label %152

124:                                              ; preds = %115
  %125 = load i32, i32* %17, align 4
  %126 = icmp sle i32 %125, 55
  br i1 %126, label %127, label %152

127:                                              ; preds = %124
  %128 = load i32, i32* %18, align 4
  %129 = shl i32 %128, 3
  %130 = load i32, i32* %17, align 4
  %131 = sub nsw i32 %130, 48
  %132 = or i32 %129, %131
  store i32 %132, i32* %18, align 4
  %133 = load i8*, i8** %9, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %9, align 8
  %135 = load i8, i8* %133, align 1
  %136 = sext i8 %135 to i32
  store i32 %136, i32* %17, align 4
  %137 = load i32, i32* %17, align 4
  %138 = icmp sge i32 %137, 48
  br i1 %138, label %139, label %148

139:                                              ; preds = %127
  %140 = load i32, i32* %17, align 4
  %141 = icmp sle i32 %140, 55
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  %143 = load i32, i32* %18, align 4
  %144 = shl i32 %143, 3
  %145 = load i32, i32* %17, align 4
  %146 = sub nsw i32 %145, 48
  %147 = or i32 %144, %146
  store i32 %147, i32* %18, align 4
  br label %151

148:                                              ; preds = %139, %127
  %149 = load i8*, i8** %9, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 -1
  store i8* %150, i8** %9, align 8
  br label %151

151:                                              ; preds = %148, %142
  br label %155

152:                                              ; preds = %124, %115
  %153 = load i8*, i8** %9, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 -1
  store i8* %154, i8** %9, align 8
  br label %155

155:                                              ; preds = %152, %151
  %156 = load i32, i32* %18, align 4
  %157 = trunc i32 %156 to i8
  %158 = load i8*, i8** %10, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %10, align 8
  store i8 %157, i8* %158, align 1
  br label %194

160:                                              ; preds = %48
  store i32 120, i32* %18, align 4
  %161 = load i8*, i8** %9, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %9, align 8
  %163 = load i8, i8* %161, align 1
  %164 = sext i8 %163 to i32
  %165 = call i32 @hextoint(i32 %164)
  store i32 %165, i32* %17, align 4
  %166 = load i32, i32* %17, align 4
  %167 = icmp sge i32 %166, 0
  br i1 %167, label %168, label %186

168:                                              ; preds = %160
  %169 = load i32, i32* %17, align 4
  store i32 %169, i32* %18, align 4
  %170 = load i8*, i8** %9, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %9, align 8
  %172 = load i8, i8* %170, align 1
  %173 = sext i8 %172 to i32
  %174 = call i32 @hextoint(i32 %173)
  store i32 %174, i32* %17, align 4
  %175 = load i32, i32* %17, align 4
  %176 = icmp sge i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %168
  %178 = load i32, i32* %18, align 4
  %179 = shl i32 %178, 4
  %180 = load i32, i32* %17, align 4
  %181 = add nsw i32 %179, %180
  store i32 %181, i32* %18, align 4
  br label %185

182:                                              ; preds = %168
  %183 = load i8*, i8** %9, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 -1
  store i8* %184, i8** %9, align 8
  br label %185

185:                                              ; preds = %182, %177
  br label %189

186:                                              ; preds = %160
  %187 = load i8*, i8** %9, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 -1
  store i8* %188, i8** %9, align 8
  br label %189

189:                                              ; preds = %186, %185
  %190 = load i32, i32* %18, align 4
  %191 = trunc i32 %190 to i8
  %192 = load i8*, i8** %10, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %10, align 8
  store i8 %191, i8* %192, align 1
  br label %194

194:                                              ; preds = %189, %155, %112, %109, %106, %103, %100, %97, %94, %89
  br label %200

195:                                              ; preds = %45
  %196 = load i32, i32* %17, align 4
  %197 = trunc i32 %196 to i8
  %198 = load i8*, i8** %10, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %10, align 8
  store i8 %197, i8* %198, align 1
  br label %200

200:                                              ; preds = %195, %194
  br label %26

201:                                              ; preds = %36, %26
  br label %202

202:                                              ; preds = %201, %60
  %203 = load i8*, i8** %10, align 8
  store i8 0, i8* %203, align 1
  %204 = load i8*, i8** %10, align 8
  %205 = load i8*, i8** %15, align 8
  %206 = ptrtoint i8* %204 to i64
  %207 = ptrtoint i8* %205 to i64
  %208 = sub i64 %206, %207
  %209 = trunc i64 %208 to i32
  %210 = load i32*, i32** %12, align 8
  store i32 %209, i32* %210, align 4
  %211 = load i8*, i8** %9, align 8
  store i8* %211, i8** %7, align 8
  br label %212

212:                                              ; preds = %202, %41
  %213 = load i8*, i8** %7, align 8
  ret i8* %213
}

declare dso_local i64 @isspace(i32) #1

declare dso_local i32 @file_error(i32*, i32, i8*, i8*) #1

declare dso_local i32 @file_magwarn(i32*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isprint(i32) #2

declare dso_local i32 @hextoint(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
