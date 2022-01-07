; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_test.c_digestsigver_test_parse.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_test.c_digestsigver_test_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, i32, i64, i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"Key\00", align 1
@public_keys = common dso_local global i32 0, align 4
@private_keys = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"DIGESTVERIFYINIT_ERROR\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"DIGESTSIGNINIT_ERROR\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Input\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Output\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Count\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Ncopy\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Ctrl\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i8*)* @digestsigver_test_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digestsigver_test_parse(%struct.TYPE_5__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %79

17:                                               ; preds = %3
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 9
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* @public_keys, align 4
  %25 = call i32 @find_key(i32** %9, i8* %23, i32 %24)
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* @private_keys, align 4
  %32 = call i32 @find_key(i32** %9, i8* %30, i32 %31)
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %29, %26
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32*, i32** %9, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36, %33
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  store i32 1, i32* %4, align 4
  br label %155

42:                                               ; preds = %36
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 9
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @EVP_DigestVerifyInit(i32 %50, i32** %52, i32 %55, i32* null, i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %47
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %61, align 8
  br label %62

62:                                               ; preds = %59, %47
  store i32 1, i32* %4, align 4
  br label %155

63:                                               ; preds = %42
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @EVP_DigestSignInit(i32 %66, i32** %68, i32 %71, i32* null, i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %63
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %77, align 8
  br label %78

78:                                               ; preds = %75, %63
  store i32 1, i32* %4, align 4
  br label %155

79:                                               ; preds = %3
  %80 = load i8*, i8** %6, align 8
  %81 = call i64 @strcmp(i8* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %100

83:                                               ; preds = %79
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %83
  %89 = load i8*, i8** %7, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 6
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 5
  %94 = call i32 @parse_bin(i8* %89, i32* %91, i32* %93)
  store i32 %94, i32* %4, align 4
  br label %155

95:                                               ; preds = %83
  %96 = load i8*, i8** %7, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = call i32 @evp_test_buffer_append(i8* %96, i32* %98)
  store i32 %99, i32* %4, align 4
  br label %155

100:                                              ; preds = %79
  %101 = load i8*, i8** %6, align 8
  %102 = call i64 @strcmp(i8* %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %100
  %105 = load i8*, i8** %7, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 3
  %110 = call i32 @parse_bin(i8* %105, i32* %107, i32* %109)
  store i32 %110, i32* %4, align 4
  br label %155

111:                                              ; preds = %100
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %137, label %116

116:                                              ; preds = %111
  %117 = load i8*, i8** %6, align 8
  %118 = call i64 @strcmp(i8* %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %116
  %121 = load i8*, i8** %7, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @evp_test_buffer_set_count(i8* %121, i32 %124)
  store i32 %125, i32* %4, align 4
  br label %155

126:                                              ; preds = %116
  %127 = load i8*, i8** %6, align 8
  %128 = call i64 @strcmp(i8* %127, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = load i8*, i8** %7, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @evp_test_buffer_ncopy(i8* %131, i32 %134)
  store i32 %135, i32* %4, align 4
  br label %155

136:                                              ; preds = %126
  br label %137

137:                                              ; preds = %136, %111
  %138 = load i8*, i8** %6, align 8
  %139 = call i64 @strcmp(i8* %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %137
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = icmp eq i32* %144, null
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  store i32 -1, i32* %4, align 4
  br label %155

147:                                              ; preds = %141
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load i8*, i8** %7, align 8
  %153 = call i32 @pkey_test_ctrl(%struct.TYPE_5__* %148, i32* %151, i8* %152)
  store i32 %153, i32* %4, align 4
  br label %155

154:                                              ; preds = %137
  store i32 0, i32* %4, align 4
  br label %155

155:                                              ; preds = %154, %147, %146, %130, %120, %104, %95, %88, %78, %62, %39
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @find_key(i32**, i8*, i32) #1

declare dso_local i32 @EVP_DigestVerifyInit(i32, i32**, i32, i32*, i32*) #1

declare dso_local i32 @EVP_DigestSignInit(i32, i32**, i32, i32*, i32*) #1

declare dso_local i32 @parse_bin(i8*, i32*, i32*) #1

declare dso_local i32 @evp_test_buffer_append(i8*, i32*) #1

declare dso_local i32 @evp_test_buffer_set_count(i8*, i32) #1

declare dso_local i32 @evp_test_buffer_ncopy(i8*, i32) #1

declare dso_local i32 @pkey_test_ctrl(%struct.TYPE_5__*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
