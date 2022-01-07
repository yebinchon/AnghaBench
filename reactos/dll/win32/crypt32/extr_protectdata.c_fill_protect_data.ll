; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_protectdata.c_fill_protect_data.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_protectdata.c_fill_protect_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protect_data_t = type { i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, i8*, %struct.TYPE_7__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32*, i64 }
%struct.TYPE_5__ = type { i32*, i64 }

@.str = private unnamed_addr constant [8 x i8] c"called\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@crypt_magic_str = common dso_local global i32 0, align 4
@CRYPT32_PROTECTDATA_KEY_CALG = common dso_local global i32 0, align 4
@CRYPT32_PROTECTDATA_KEY_LEN = common dso_local global i32 0, align 4
@CRYPT32_PROTECTDATA_HASH_CALG = common dso_local global i32 0, align 4
@CRYPT32_PROTECTDATA_HASH_LEN = common dso_local global i32 0, align 4
@CRYPT32_PROTECTDATA_SALT_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"CryptGenRandom\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"could not allocate protect_data structures\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.protect_data_t*, i32, i32)* @fill_protect_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_protect_data(%struct.protect_data_t* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.protect_data_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.protect_data_t* %0, %struct.protect_data_t** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call i32 @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %11 = icmp ne %struct.protect_data_t* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %4, align 4
  br label %148

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @lstrlenW(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %18 = call i32 @memset(%struct.protect_data_t* %17, i32 0, i32 104)
  %19 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %20 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load i32, i32* @crypt_magic_str, align 4
  %22 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %23 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %22, i32 0, i32 8
  %24 = call i32 @convert_str_to_blob(i32 %21, %struct.TYPE_7__* %23)
  %25 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %26 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = load i32, i32* @crypt_magic_str, align 4
  %28 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %29 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %28, i32 0, i32 7
  %30 = call i32 @convert_str_to_blob(i32 %27, %struct.TYPE_7__* %29)
  %31 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %32 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %31, i32 0, i32 2
  store i32 0, i32* %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = call i8* @CryptMemAlloc(i32 %37)
  %39 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %40 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %39, i32 0, i32 6
  store i8* %38, i8** %40, align 8
  %41 = icmp ne i8* %38, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %14
  %43 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %44 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %43, i32 0, i32 6
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = call i32 @memcpy(i8* %45, i32 %46, i32 %51)
  br label %53

53:                                               ; preds = %42, %14
  %54 = load i32, i32* @CRYPT32_PROTECTDATA_KEY_CALG, align 4
  %55 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %56 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %55, i32 0, i32 14
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @CRYPT32_PROTECTDATA_KEY_LEN, align 4
  %58 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %59 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %58, i32 0, i32 13
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @crypt_magic_str, align 4
  %61 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %62 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %61, i32 0, i32 5
  %63 = call i32 @convert_str_to_blob(i32 %60, %struct.TYPE_7__* %62)
  %64 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %65 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %64, i32 0, i32 3
  store i32 0, i32* %65, align 4
  %66 = load i32, i32* @CRYPT32_PROTECTDATA_HASH_CALG, align 4
  %67 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %68 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %67, i32 0, i32 12
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @CRYPT32_PROTECTDATA_HASH_LEN, align 4
  %70 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %71 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %70, i32 0, i32 11
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @CRYPT32_PROTECTDATA_SALT_LEN, align 4
  %73 = call i8* @CryptMemAlloc(i32 %72)
  %74 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %75 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  store i8* %73, i8** %76, align 8
  %77 = icmp ne i8* %73, null
  br i1 %77, label %78, label %100

78:                                               ; preds = %53
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @CRYPT32_PROTECTDATA_SALT_LEN, align 4
  %81 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %82 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @CryptGenRandom(i32 %79, i32 %80, i8* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %78
  %88 = call i32 @ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %89 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %90 = call i32 @free_protect_data(%struct.protect_data_t* %89)
  %91 = load i32, i32* @FALSE, align 4
  store i32 %91, i32* %4, align 4
  br label %148

92:                                               ; preds = %78
  %93 = load i32, i32* @CRYPT32_PROTECTDATA_SALT_LEN, align 4
  %94 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %95 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  %97 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %98 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %97, i32 0, i32 4
  %99 = call i32 @TRACE_DATA_BLOB(%struct.TYPE_8__* %98)
  br label %100

100:                                              ; preds = %92, %53
  %101 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %102 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %101, i32 0, i32 10
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  store i64 0, i64* %103, align 8
  %104 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %105 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %104, i32 0, i32 10
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  store i32* null, i32** %106, align 8
  %107 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %108 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %107, i32 0, i32 9
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  store i64 0, i64* %109, align 8
  %110 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %111 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %110, i32 0, i32 9
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  store i32* null, i32** %112, align 8
  %113 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %114 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %113, i32 0, i32 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %141

118:                                              ; preds = %100
  %119 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %120 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %119, i32 0, i32 7
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %141

124:                                              ; preds = %118
  %125 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %126 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %125, i32 0, i32 6
  %127 = load i8*, i8** %126, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %141

129:                                              ; preds = %124
  %130 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %131 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %129
  %136 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %137 = getelementptr inbounds %struct.protect_data_t, %struct.protect_data_t* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %146, label %141

141:                                              ; preds = %135, %129, %124, %118, %100
  %142 = call i32 @ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %143 = load %struct.protect_data_t*, %struct.protect_data_t** %5, align 8
  %144 = call i32 @free_protect_data(%struct.protect_data_t* %143)
  %145 = load i32, i32* @FALSE, align 4
  store i32 %145, i32* %4, align 4
  br label %148

146:                                              ; preds = %135
  %147 = load i32, i32* @TRUE, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %146, %141, %87, %12
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @lstrlenW(i32) #1

declare dso_local i32 @memset(%struct.protect_data_t*, i32, i32) #1

declare dso_local i32 @convert_str_to_blob(i32, %struct.TYPE_7__*) #1

declare dso_local i8* @CryptMemAlloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @CryptGenRandom(i32, i32, i8*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @free_protect_data(%struct.protect_data_t*) #1

declare dso_local i32 @TRACE_DATA_BLOB(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
