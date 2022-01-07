; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_makeamitbin.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_makeamitbin.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdrinfo = type { i32 }

@HDRSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@ascii1 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"-2\00", align 1
@ascii2 = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"-ids\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.hdrinfo*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i32, i32* @HDRSIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %20

20:                                               ; preds = %80, %2
  %21 = load i32, i32* %15, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %83

24:                                               ; preds = %20
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32, i32* %15, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = load i8**, i8*** %5, align 8
  %34 = load i32, i32* %15, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %33, i64 %36
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** @ascii1, align 8
  br label %39

39:                                               ; preds = %32, %24
  %40 = load i8**, i8*** %5, align 8
  %41 = load i32, i32* %15, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load i8**, i8*** %5, align 8
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %48, i64 %51
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** @ascii2, align 8
  br label %54

54:                                               ; preds = %47, %39
  %55 = load i8**, i8*** %5, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @strcmp(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %54
  %63 = load i8**, i8*** %5, align 8
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %63, i64 %66
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %10, align 8
  br label %69

69:                                               ; preds = %62, %54
  %70 = load i8**, i8*** %5, align 8
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = call i32 (...) @show_fwids()
  br label %79

79:                                               ; preds = %77, %69
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %15, align 4
  br label %20

83:                                               ; preds = %20
  %84 = load i8*, i8** @ascii1, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %92, label %86

86:                                               ; preds = %83
  %87 = load i8*, i8** @ascii2, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i8*, i8** %10, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %89, %86, %83
  %93 = call i32 (...) @showhelp()
  br label %94

94:                                               ; preds = %92, %89
  %95 = load i8*, i8** %10, align 8
  %96 = call i32* @fopen(i8* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %96, i32** %9, align 8
  %97 = load i32*, i32** %9, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32*, i32** %9, align 8
  %101 = call i32 @oferror(i32* %100)
  br label %102

102:                                              ; preds = %99, %94
  store i32 1, i32* %15, align 4
  br label %103

103:                                              ; preds = %180, %102
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %183

107:                                              ; preds = %103
  %108 = load i8**, i8*** %5, align 8
  %109 = load i32, i32* %15, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @strncmp(i8* %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %176

115:                                              ; preds = %107
  %116 = load i8**, i8*** %5, align 8
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %15, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i8*, i8** %116, i64 %119
  %121 = load i8*, i8** %120, align 8
  store i8* %121, i8** %11, align 8
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %4, align 4
  %124 = icmp sge i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %115
  %126 = call i32 (...) @showhelp()
  br label %127

127:                                              ; preds = %125, %115
  %128 = load i32, i32* %15, align 4
  %129 = add nsw i32 %128, 1
  %130 = load i32, i32* %4, align 4
  %131 = icmp sge i32 %129, %130
  %132 = zext i1 %131 to i32
  store i32 %132, i32* %14, align 4
  %133 = load i8*, i8** %11, align 8
  %134 = call %struct.hdrinfo* @find_hdrinfo(i8* %133)
  store %struct.hdrinfo* %134, %struct.hdrinfo** %12, align 8
  %135 = load %struct.hdrinfo*, %struct.hdrinfo** %12, align 8
  %136 = icmp eq %struct.hdrinfo* %135, null
  br i1 %136, label %137, label %139

137:                                              ; preds = %127
  %138 = call i32 (...) @showhelp()
  br label %139

139:                                              ; preds = %137, %127
  %140 = load i8**, i8*** %5, align 8
  %141 = load i32, i32* %15, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %140, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = call i8* @read_file(i8* %144, i64* %13)
  store i8* %145, i8** %8, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = icmp eq i8* %146, null
  br i1 %147, label %148, label %150

148:                                              ; preds = %139
  %149 = call i32 (...) @showhelp()
  br label %150

150:                                              ; preds = %148, %139
  %151 = load %struct.hdrinfo*, %struct.hdrinfo** %12, align 8
  %152 = load i8*, i8** %8, align 8
  %153 = load i64, i64* %13, align 8
  %154 = load i32, i32* %14, align 4
  %155 = call i32 @makehdr(i8* %19, %struct.hdrinfo* %151, i8* %152, i64 %153, i32 %154)
  %156 = load i32, i32* @HDRSIZE, align 4
  %157 = sext i32 %156 to i64
  %158 = load i32*, i32** %9, align 8
  %159 = call i32 @fwrite(i8* %19, i64 %157, i32 1, i32* %158)
  %160 = icmp ne i32 %159, 1
  br i1 %160, label %161, label %164

161:                                              ; preds = %150
  %162 = load i32*, i32** %9, align 8
  %163 = call i32 @oferror(i32* %162)
  br label %164

164:                                              ; preds = %161, %150
  %165 = load i8*, i8** %8, align 8
  %166 = load i64, i64* %13, align 8
  %167 = load i32*, i32** %9, align 8
  %168 = call i32 @fwrite(i8* %165, i64 %166, i32 1, i32* %167)
  %169 = icmp ne i32 %168, 1
  br i1 %169, label %170, label %173

170:                                              ; preds = %164
  %171 = load i32*, i32** %9, align 8
  %172 = call i32 @oferror(i32* %171)
  br label %173

173:                                              ; preds = %170, %164
  %174 = load i8*, i8** %8, align 8
  %175 = call i32 @free(i8* %174)
  br label %179

176:                                              ; preds = %107
  %177 = load i32, i32* %15, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %15, align 4
  br label %179

179:                                              ; preds = %176, %173
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %15, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %15, align 4
  br label %103

183:                                              ; preds = %103
  %184 = load i32*, i32** %9, align 8
  %185 = call i64 @fclose(i32* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %183
  %188 = call i32 @oferror(i32* null)
  br label %189

189:                                              ; preds = %187, %183
  store i32 0, i32* %3, align 4
  %190 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %190)
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @show_fwids(...) #2

declare dso_local i32 @showhelp(...) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @oferror(i32*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local %struct.hdrinfo* @find_hdrinfo(i8*) #2

declare dso_local i8* @read_file(i8*, i64*) #2

declare dso_local i32 @makehdr(i8*, %struct.hdrinfo*, i8*, i64, i32) #2

declare dso_local i32 @fwrite(i8*, i64, i32, i32*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
