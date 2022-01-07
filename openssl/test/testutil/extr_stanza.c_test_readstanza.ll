; ModuleID = '/home/carl/AnghaBench/openssl/test/testutil/extr_stanza.c_test_readstanza.c'
source_filename = "/home/carl/AnghaBench/openssl/test/testutil/extr_stanza.c_test_readstanza.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8*, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i8* }

@.str = private unnamed_addr constant [17 x i8] c"Line %d too long\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Missing = at line %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Empty field at line %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Title\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Starting \22%s\22 tests at line %d\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"PrivateKey\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"PublicKey\00", align 1
@TESTMAXPAIRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_readstanza(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 5
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %4, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  br label %14

14:                                               ; preds = %160, %99, %59, %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @BIO_gets(i32 %17, i8* %20, i32 8)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %163

23:                                               ; preds = %14
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @strchr(i8* %30, i8 signext 10)
  store i8* %31, i8** %5, align 8
  %32 = call i32 @TEST_ptr(i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %23
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 (i8*, i8*, ...) @TEST_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %39)
  store i32 0, i32* %2, align 4
  br label %164

41:                                               ; preds = %23
  %42 = load i8*, i8** %5, align 8
  store i8 0, i8* %42, align 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %163

51:                                               ; preds = %41
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 35
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %14

60:                                               ; preds = %51
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i8* @strchr(i8* %63, i8 signext 61)
  store i8* %64, i8** %6, align 8
  %65 = call i32 @TEST_ptr(i8* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %60
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = call i32 (i8*, i8*, ...) @TEST_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %72)
  store i32 0, i32* %2, align 4
  br label %164

74:                                               ; preds = %60
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %6, align 8
  store i8 0, i8* %75, align 1
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i8* @strip_spaces(i8* %79)
  store i8* %80, i8** %7, align 8
  %81 = call i32 @TEST_ptr(i8* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %74
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i8*
  %89 = call i32 (i8*, i8*, ...) @TEST_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %88)
  store i32 0, i32* %2, align 4
  br label %164

90:                                               ; preds = %74
  %91 = load i8*, i8** %6, align 8
  %92 = call i8* @strip_spaces(i8* %91)
  store i8* %92, i8** %8, align 8
  %93 = icmp eq i8* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %95

95:                                               ; preds = %94, %90
  %96 = load i8*, i8** %7, align 8
  %97 = call i64 @strcmp(i8* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = load i8*, i8** %8, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 (i8*, i8*, ...) @TEST_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %100, i32 %103)
  br label %14

105:                                              ; preds = %95
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %110, %105
  %117 = load i8*, i8** %7, align 8
  %118 = call i64 @strcmp(i8* %117, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %116
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %122 = call i32 @read_key(%struct.TYPE_5__* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  store i32 0, i32* %2, align 4
  br label %164

125:                                              ; preds = %120
  br label %126

126:                                              ; preds = %125, %116
  %127 = load i8*, i8** %7, align 8
  %128 = call i64 @strcmp(i8* %127, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %132 = call i32 @read_key(%struct.TYPE_5__* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %130
  store i32 0, i32* %2, align 4
  br label %164

135:                                              ; preds = %130
  br label %136

136:                                              ; preds = %135, %126
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %139, 1
  store i64 %140, i64* %138, align 8
  %141 = trunc i64 %139 to i32
  %142 = load i32, i32* @TESTMAXPAIRS, align 4
  %143 = call i32 @TEST_int_lt(i32 %141, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %159

145:                                              ; preds = %136
  %146 = load i8*, i8** %7, align 8
  %147 = call i8* @OPENSSL_strdup(i8* %146)
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  store i8* %147, i8** %149, align 8
  %150 = call i32 @TEST_ptr(i8* %147)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %145
  %153 = load i8*, i8** %8, align 8
  %154 = call i8* @OPENSSL_strdup(i8* %153)
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  store i8* %154, i8** %156, align 8
  %157 = call i32 @TEST_ptr(i8* %154)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %152, %145, %136
  store i32 0, i32* %2, align 4
  br label %164

160:                                              ; preds = %152
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 1
  store %struct.TYPE_6__* %162, %struct.TYPE_6__** %4, align 8
  br label %14

163:                                              ; preds = %50, %14
  store i32 1, i32* %2, align 4
  br label %164

164:                                              ; preds = %163, %159, %134, %124, %83, %67, %34
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i64 @BIO_gets(i32, i8*, i32) #1

declare dso_local i32 @TEST_ptr(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @TEST_info(i8*, i8*, ...) #1

declare dso_local i8* @strip_spaces(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @read_key(%struct.TYPE_5__*) #1

declare dso_local i32 @TEST_int_lt(i32, i32) #1

declare dso_local i8* @OPENSSL_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
