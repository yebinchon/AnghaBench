; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_tls.c_test_mutliproc.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_tls.c_test_mutliproc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__test_metadata = type { i32 }
%struct._test_data_tls = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"/tmp/\00", align 1
@O_TMPFILE = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.__test_metadata*, %struct._test_data_tls*, i32, i32, i32)* @test_mutliproc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_mutliproc(%struct.__test_metadata* %0, %struct._test_data_tls* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.__test_metadata*, align 8
  %7 = alloca %struct._test_data_tls*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [60000 x i8], align 16
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca [8001 x i8], align 16
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  store %struct.__test_metadata* %0, %struct.__test_metadata** %6, align 8
  store %struct._test_data_tls* %1, %struct._test_data_tls** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = add i32 %27, %28
  store i32 %29, i32* %11, align 4
  store i64 6000000, i64* %12, align 8
  store i64 60000, i64* %13, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = urem i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %5
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  %37 = urem i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %34, %5
  %41 = phi i1 [ true, %5 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @ASSERT_EQ(i32 %42, i64 1)
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = udiv i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %50

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %48
  %51 = phi i32 [ %46, %48 ], [ 1, %49 ]
  %52 = zext i32 %51 to i64
  store i64 %52, i64* %14, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = udiv i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %59

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %57
  %60 = phi i32 [ %55, %57 ], [ 1, %58 ]
  %61 = zext i32 %60 to i64
  store i64 %61, i64* %15, align 8
  %62 = load i32, i32* @O_TMPFILE, align 4
  %63 = load i32, i32* @O_RDWR, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @open(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %64, i32 384)
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %17, align 4
  %67 = call i32 @ASSERT_GE(i32 %66, i32 0)
  %68 = getelementptr inbounds [60000 x i8], [60000 x i8]* %19, i64 0, i64 0
  %69 = call i32 @memset(i8* %68, i32 172, i64 60000)
  %70 = load i32, i32* %17, align 4
  %71 = getelementptr inbounds [60000 x i8], [60000 x i8]* %19, i64 0, i64 0
  %72 = call i32 @write(i32 %70, i8* %71, i64 60000)
  %73 = call i32 @ASSERT_EQ(i32 %72, i64 60000)
  store i32 0, i32* %18, align 4
  br label %74

74:                                               ; preds = %86, %59
  %75 = load i32, i32* %18, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %74
  %79 = call i64 (...) @fork()
  store i64 %79, i64* %20, align 8
  %80 = load i64, i64* %20, align 8
  %81 = call i32 @ASSERT_NE(i64 %80, i32 -1)
  %82 = load i64, i64* %20, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  br label %89

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %18, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %18, align 4
  br label %74

89:                                               ; preds = %84, %74
  %90 = load i64, i64* %20, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %89
  store i32 0, i32* %16, align 4
  br label %93

93:                                               ; preds = %101, %92
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %93
  %98 = call i32 @wait(i32* %21)
  %99 = load i32, i32* %21, align 4
  %100 = call i32 @EXPECT_EQ(i32 %99, i32 0)
  br label %101

101:                                              ; preds = %97
  %102 = load i32, i32* %16, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %16, align 4
  br label %93

104:                                              ; preds = %93
  br label %183

105:                                              ; preds = %89
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %136

109:                                              ; preds = %105
  %110 = load i64, i64* %14, align 8
  %111 = mul i64 6000000, %110
  store i64 %111, i64* %22, align 8
  br label %112

112:                                              ; preds = %125, %109
  %113 = load i64, i64* %22, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %135

115:                                              ; preds = %112
  %116 = load %struct._test_data_tls*, %struct._test_data_tls** %7, align 8
  %117 = getelementptr inbounds %struct._test_data_tls, %struct._test_data_tls* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds [8001 x i8], [8001 x i8]* %23, i64 0, i64 0
  %120 = load i64, i64* %22, align 8
  %121 = icmp ugt i64 %120, 8001
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  br label %125

123:                                              ; preds = %115
  %124 = load i64, i64* %22, align 8
  br label %125

125:                                              ; preds = %123, %122
  %126 = phi i64 [ 8001, %122 ], [ %124, %123 ]
  %127 = trunc i64 %126 to i32
  %128 = call i32 @recv(i32 %118, i8* %119, i32 %127, i32 0)
  store i32 %128, i32* %24, align 4
  %129 = load i32, i32* %24, align 4
  %130 = call i32 @EXPECT_GE(i32 %129, i32 0)
  %131 = load i32, i32* %24, align 4
  %132 = sext i32 %131 to i64
  %133 = load i64, i64* %22, align 8
  %134 = sub i64 %133, %132
  store i64 %134, i64* %22, align 8
  br label %112

135:                                              ; preds = %112
  br label %183

136:                                              ; preds = %105
  %137 = load i64, i64* %15, align 8
  %138 = mul i64 6000000, %137
  store i64 %138, i64* %25, align 8
  br label %139

139:                                              ; preds = %175, %136
  %140 = load i64, i64* %25, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %182

142:                                              ; preds = %139
  %143 = load i32, i32* %17, align 4
  %144 = load i32, i32* @SEEK_SET, align 4
  %145 = call i32 @lseek(i32 %143, i32 0, i32 %144)
  %146 = call i32 @ASSERT_EQ(i32 %145, i64 0)
  %147 = load i32, i32* %8, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %162

149:                                              ; preds = %142
  %150 = load %struct._test_data_tls*, %struct._test_data_tls** %7, align 8
  %151 = getelementptr inbounds %struct._test_data_tls, %struct._test_data_tls* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %17, align 4
  %154 = load i64, i64* %25, align 8
  %155 = icmp ugt i64 %154, 60000
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  br label %159

157:                                              ; preds = %149
  %158 = load i64, i64* %25, align 8
  br label %159

159:                                              ; preds = %157, %156
  %160 = phi i64 [ 60000, %156 ], [ %158, %157 ]
  %161 = call i32 @sendfile(i32 %152, i32 %153, i32* null, i64 %160)
  store i32 %161, i32* %26, align 4
  br label %175

162:                                              ; preds = %142
  %163 = load %struct._test_data_tls*, %struct._test_data_tls** %7, align 8
  %164 = getelementptr inbounds %struct._test_data_tls, %struct._test_data_tls* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds [60000 x i8], [60000 x i8]* %19, i64 0, i64 0
  %167 = load i64, i64* %25, align 8
  %168 = icmp ugt i64 %167, 60000
  br i1 %168, label %169, label %170

169:                                              ; preds = %162
  br label %172

170:                                              ; preds = %162
  %171 = load i64, i64* %25, align 8
  br label %172

172:                                              ; preds = %170, %169
  %173 = phi i64 [ 60000, %169 ], [ %171, %170 ]
  %174 = call i32 @send(i32 %165, i8* %166, i64 %173, i32 0)
  store i32 %174, i32* %26, align 4
  br label %175

175:                                              ; preds = %172, %159
  %176 = load i32, i32* %26, align 4
  %177 = call i32 @EXPECT_GE(i32 %176, i32 0)
  %178 = load i32, i32* %26, align 4
  %179 = sext i32 %178 to i64
  %180 = load i64, i64* %25, align 8
  %181 = sub i64 %180, %179
  store i64 %181, i64* %25, align 8
  br label %139

182:                                              ; preds = %139
  br label %183

183:                                              ; preds = %104, %182, %135
  ret void
}

declare dso_local i32 @ASSERT_EQ(i32, i64) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @ASSERT_GE(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @write(i32, i8*, i64) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @ASSERT_NE(i64, i32) #1

declare dso_local i32 @wait(i32*) #1

declare dso_local i32 @EXPECT_EQ(i32, i32) #1

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @EXPECT_GE(i32, i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @sendfile(i32, i32, i32*, i64) #1

declare dso_local i32 @send(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
