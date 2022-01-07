; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_test.c_cipher_test_parse.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_test.c_cipher_test_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64, i32, i32, i32, i32*, i32*, i32**, i64, i32, i32*, i32, i32*, i32, i32*, i32, i32* }

@.str = private unnamed_addr constant [4 x i8] c"Key\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Rounds\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"IV\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Plaintext\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Ciphertext\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"KeyBits\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"AAD\00", align 1
@AAD_NUM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"Tag\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"SetTagLate\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"Operation\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"ENCRYPT\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"DECRYPT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i8*)* @cipher_test_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cipher_test_parse(%struct.TYPE_4__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 16
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 15
  %22 = call i32 @parse_bin(i8* %17, i32** %19, i32* %21)
  store i32 %22, i32* %4, align 4
  br label %183

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @atoi(i8* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 -1, i32* %4, align 4
  br label %183

33:                                               ; preds = %27
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  store i32 1, i32* %4, align 4
  br label %183

37:                                               ; preds = %23
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 14
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 13
  %47 = call i32 @parse_bin(i8* %42, i32** %44, i32* %46)
  store i32 %47, i32* %4, align 4
  br label %183

48:                                               ; preds = %37
  %49 = load i8*, i8** %6, align 8
  %50 = call i64 @strcmp(i8* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 12
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 11
  %58 = call i32 @parse_bin(i8* %53, i32** %55, i32* %57)
  store i32 %58, i32* %4, align 4
  br label %183

59:                                               ; preds = %48
  %60 = load i8*, i8** %6, align 8
  %61 = call i64 @strcmp(i8* %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load i8*, i8** %7, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 10
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 9
  %69 = call i32 @parse_bin(i8* %64, i32** %66, i32* %68)
  store i32 %69, i32* %4, align 4
  br label %183

70:                                               ; preds = %59
  %71 = load i8*, i8** %6, align 8
  %72 = call i64 @strcmp(i8* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %70
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @atoi(i8* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 -1, i32* %4, align 4
  br label %183

80:                                               ; preds = %74
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  store i32 1, i32* %4, align 4
  br label %183

85:                                               ; preds = %70
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 8
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %161

90:                                               ; preds = %85
  %91 = load i8*, i8** %6, align 8
  %92 = call i64 @strcmp(i8* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %128

94:                                               ; preds = %90
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %124, %94
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @AAD_NUM, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %127

99:                                               ; preds = %95
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 7
  %102 = load i32**, i32*** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %102, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %123

108:                                              ; preds = %99
  %109 = load i8*, i8** %7, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 7
  %112 = load i32**, i32*** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32*, i32** %112, i64 %114
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 6
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = call i32 @parse_bin(i8* %109, i32** %115, i32* %121)
  store i32 %122, i32* %4, align 4
  br label %183

123:                                              ; preds = %99
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %95

127:                                              ; preds = %95
  store i32 -1, i32* %4, align 4
  br label %183

128:                                              ; preds = %90
  %129 = load i8*, i8** %6, align 8
  %130 = call i64 @strcmp(i8* %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %128
  %133 = load i8*, i8** %7, align 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 5
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 4
  %138 = call i32 @parse_bin(i8* %133, i32** %135, i32* %137)
  store i32 %138, i32* %4, align 4
  br label %183

139:                                              ; preds = %128
  %140 = load i8*, i8** %6, align 8
  %141 = call i64 @strcmp(i8* %140, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %160

143:                                              ; preds = %139
  %144 = load i8*, i8** %7, align 8
  %145 = call i64 @strcmp(i8* %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  store i32 1, i32* %149, align 8
  br label %159

150:                                              ; preds = %143
  %151 = load i8*, i8** %7, align 8
  %152 = call i64 @strcmp(i8* %151, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 2
  store i32 0, i32* %156, align 8
  br label %158

157:                                              ; preds = %150
  store i32 -1, i32* %4, align 4
  br label %183

158:                                              ; preds = %154
  br label %159

159:                                              ; preds = %158, %147
  store i32 1, i32* %4, align 4
  br label %183

160:                                              ; preds = %139
  br label %161

161:                                              ; preds = %160, %85
  %162 = load i8*, i8** %6, align 8
  %163 = call i64 @strcmp(i8* %162, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %182

165:                                              ; preds = %161
  %166 = load i8*, i8** %7, align 8
  %167 = call i64 @strcmp(i8* %166, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 3
  store i32 1, i32* %171, align 4
  br label %181

172:                                              ; preds = %165
  %173 = load i8*, i8** %7, align 8
  %174 = call i64 @strcmp(i8* %173, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 3
  store i32 0, i32* %178, align 4
  br label %180

179:                                              ; preds = %172
  store i32 -1, i32* %4, align 4
  br label %183

180:                                              ; preds = %176
  br label %181

181:                                              ; preds = %180, %169
  store i32 1, i32* %4, align 4
  br label %183

182:                                              ; preds = %161
  store i32 0, i32* %4, align 4
  br label %183

183:                                              ; preds = %182, %181, %179, %159, %157, %132, %127, %108, %80, %79, %63, %52, %41, %33, %32, %16
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @parse_bin(i8*, i32**, i32*) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
