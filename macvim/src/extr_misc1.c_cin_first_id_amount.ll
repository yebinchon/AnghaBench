; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_misc1.c_cin_first_id_amount.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_misc1.c_cin_first_id_amount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@curwin = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cin_first_id_amount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cin_first_id_amount() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca i64, align 8
  %8 = call i32* (...) @ml_get_curline()
  store i32* %8, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32* @skipwhite(i32* %9)
  store i32* %10, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32* @skiptowhite(i32* %11)
  %13 = load i32*, i32** %3, align 8
  %14 = ptrtoint i32* %12 to i64
  %15 = ptrtoint i32* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 4
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 6
  br i1 %20, label %21, label %37

21:                                               ; preds = %0
  %22 = load i32*, i32** %3, align 8
  %23 = call i64 @STRNCMP(i32* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load i32*, i32** %3, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 6
  %28 = call i32* @skipwhite(i32* %27)
  store i32* %28, i32** %3, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = call i32* @skiptowhite(i32* %29)
  %31 = load i32*, i32** %3, align 8
  %32 = ptrtoint i32* %30 to i64
  %33 = ptrtoint i32* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 4
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %25, %21, %0
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 6
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i32*, i32** %3, align 8
  %42 = call i64 @STRNCMP(i32* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32*, i32** %3, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 6
  %47 = call i32* @skipwhite(i32* %46)
  store i32* %47, i32** %3, align 8
  br label %123

48:                                               ; preds = %40, %37
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 4
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i32*, i32** %3, align 8
  %53 = call i64 @STRNCMP(i32* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32*, i32** %3, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  %58 = call i32* @skipwhite(i32* %57)
  store i32* %58, i32** %3, align 8
  br label %122

59:                                               ; preds = %51, %48
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %60, 8
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32*, i32** %3, align 8
  %64 = call i64 @STRNCMP(i32* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %62, %59
  %67 = load i32, i32* %5, align 4
  %68 = icmp eq i32 %67, 6
  br i1 %68, label %69, label %121

69:                                               ; preds = %66
  %70 = load i32*, i32** %3, align 8
  %71 = call i64 @STRNCMP(i32* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %121

73:                                               ; preds = %69, %62
  %74 = load i32*, i32** %3, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = call i32* @skipwhite(i32* %77)
  store i32* %78, i32** %4, align 8
  %79 = load i32*, i32** %4, align 8
  %80 = call i64 @STRNCMP(i32* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 3)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %73
  %83 = load i32*, i32** %4, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @vim_iswhite(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %118, label %88

88:                                               ; preds = %82, %73
  %89 = load i32*, i32** %4, align 8
  %90 = call i64 @STRNCMP(i32* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load i32*, i32** %4, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 4
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @vim_iswhite(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %118, label %98

98:                                               ; preds = %92, %88
  %99 = load i32*, i32** %4, align 8
  %100 = call i64 @STRNCMP(i32* %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 5)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load i32*, i32** %4, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 5
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @vim_iswhite(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %102, %98
  %109 = load i32*, i32** %4, align 8
  %110 = call i64 @STRNCMP(i32* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 4)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %108
  %113 = load i32*, i32** %4, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 4
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @vim_iswhite(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %112, %102, %92, %82
  %119 = load i32*, i32** %4, align 8
  store i32* %119, i32** %3, align 8
  br label %120

120:                                              ; preds = %118, %112, %108
  br label %121

121:                                              ; preds = %120, %69, %66
  br label %122

122:                                              ; preds = %121, %55
  br label %123

123:                                              ; preds = %122, %44
  store i32 0, i32* %5, align 4
  br label %124

124:                                              ; preds = %133, %123
  %125 = load i32*, i32** %3, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @vim_isIDc(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %124
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %5, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %5, align 4
  br label %124

136:                                              ; preds = %124
  %137 = load i32, i32* %5, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %151, label %139

139:                                              ; preds = %136
  %140 = load i32*, i32** %3, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @vim_iswhite(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %139
  %148 = load i32*, i32** %3, align 8
  %149 = call i64 @cin_nocode(i32* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %147, %139, %136
  store i32 0, i32* %1, align 4
  br label %174

152:                                              ; preds = %147
  %153 = load i32*, i32** %3, align 8
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = call i32* @skipwhite(i32* %156)
  store i32* %157, i32** %3, align 8
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curwin, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i32 %161, i32* %162, align 8
  %163 = load i32*, i32** %3, align 8
  %164 = load i32*, i32** %2, align 8
  %165 = ptrtoint i32* %163 to i64
  %166 = ptrtoint i32* %164 to i64
  %167 = sub i64 %165, %166
  %168 = sdiv exact i64 %167, 4
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i64 %168, i64* %169, align 8
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curwin, align 8
  %171 = call i32 @getvcol(%struct.TYPE_8__* %170, %struct.TYPE_7__* %6, i64* %7, i32* null, i32* null)
  %172 = load i64, i64* %7, align 8
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %1, align 4
  br label %174

174:                                              ; preds = %152, %151
  %175 = load i32, i32* %1, align 4
  ret i32 %175
}

declare dso_local i32* @ml_get_curline(...) #1

declare dso_local i32* @skipwhite(i32*) #1

declare dso_local i32* @skiptowhite(i32*) #1

declare dso_local i64 @STRNCMP(i32*, i8*, i32) #1

declare dso_local i64 @vim_iswhite(i32) #1

declare dso_local i64 @vim_isIDc(i32) #1

declare dso_local i64 @cin_nocode(i32*) #1

declare dso_local i32 @getvcol(%struct.TYPE_8__*, %struct.TYPE_7__*, i64*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
