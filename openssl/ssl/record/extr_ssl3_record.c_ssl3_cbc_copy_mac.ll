; ModuleID = '/home/carl/AnghaBench/openssl/ssl/record/extr_ssl3_record.c_ssl3_cbc_copy_mac.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/record/extr_ssl3_record.c_ssl3_cbc_copy_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i8* }

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl3_cbc_copy_mac(i8* %0, %struct.TYPE_3__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i64 %2, i64* %7, align 8
  %21 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %8, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %7, align 8
  %30 = sub i64 %28, %29
  store i64 %30, i64* %11, align 8
  store i64 0, i64* %13, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp uge i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %3
  %37 = load i64, i64* %7, align 8
  %38 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ule i64 %37, %39
  br label %41

41:                                               ; preds = %36, %3
  %42 = phi i1 [ false, %3 ], [ %40, %36 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @ossl_assert(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %169

47:                                               ; preds = %41
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %51, 255
  %53 = add i64 %52, 1
  %54 = icmp ugt i64 %50, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = add i64 %59, 255
  %61 = add i64 %60, 1
  %62 = sub i64 %58, %61
  store i64 %62, i64* %13, align 8
  br label %63

63:                                               ; preds = %55, %47
  store i64 0, i64* %12, align 8
  store i64 0, i64* %16, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @memset(i8* %24, i32 0, i64 %64)
  %66 = load i64, i64* %13, align 8
  store i64 %66, i64* %14, align 8
  store i64 0, i64* %15, align 8
  br label %67

67:                                               ; preds = %113, %63
  %68 = load i64, i64* %14, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ult i64 %68, %71
  br i1 %72, label %73, label %116

73:                                               ; preds = %67
  %74 = load i64, i64* %14, align 8
  %75 = load i64, i64* %11, align 8
  %76 = call i64 @constant_time_eq_s(i64 %74, i64 %75)
  store i64 %76, i64* %18, align 8
  %77 = load i64, i64* %14, align 8
  %78 = load i64, i64* %10, align 8
  %79 = call i64 @constant_time_lt_s(i64 %77, i64 %78)
  store i64 %79, i64* %19, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = load i64, i64* %14, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  %85 = load i8, i8* %84, align 1
  store i8 %85, i8* %20, align 1
  %86 = load i64, i64* %18, align 8
  %87 = load i64, i64* %12, align 8
  %88 = or i64 %87, %86
  store i64 %88, i64* %12, align 8
  %89 = load i64, i64* %19, align 8
  %90 = load i64, i64* %12, align 8
  %91 = and i64 %90, %89
  store i64 %91, i64* %12, align 8
  %92 = load i64, i64* %15, align 8
  %93 = load i64, i64* %18, align 8
  %94 = and i64 %92, %93
  %95 = load i64, i64* %16, align 8
  %96 = or i64 %95, %94
  store i64 %96, i64* %16, align 8
  %97 = load i8, i8* %20, align 1
  %98 = zext i8 %97 to i64
  %99 = load i64, i64* %12, align 8
  %100 = and i64 %98, %99
  %101 = load i64, i64* %15, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %15, align 8
  %103 = getelementptr inbounds i8, i8* %24, i64 %101
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i64
  %106 = or i64 %105, %100
  %107 = trunc i64 %106 to i8
  store i8 %107, i8* %103, align 1
  %108 = load i64, i64* %15, align 8
  %109 = load i64, i64* %7, align 8
  %110 = call i64 @constant_time_lt_s(i64 %108, i64 %109)
  %111 = load i64, i64* %15, align 8
  %112 = and i64 %111, %110
  store i64 %112, i64* %15, align 8
  br label %113

113:                                              ; preds = %73
  %114 = load i64, i64* %14, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %14, align 8
  br label %67

116:                                              ; preds = %67
  %117 = load i8*, i8** %5, align 8
  %118 = load i64, i64* %7, align 8
  %119 = call i32 @memset(i8* %117, i32 0, i64 %118)
  %120 = load i64, i64* %7, align 8
  %121 = load i64, i64* %16, align 8
  %122 = sub i64 %120, %121
  store i64 %122, i64* %16, align 8
  %123 = load i64, i64* %16, align 8
  %124 = load i64, i64* %7, align 8
  %125 = call i64 @constant_time_lt_s(i64 %123, i64 %124)
  %126 = load i64, i64* %16, align 8
  %127 = and i64 %126, %125
  store i64 %127, i64* %16, align 8
  store i64 0, i64* %14, align 8
  br label %128

128:                                              ; preds = %165, %116
  %129 = load i64, i64* %14, align 8
  %130 = load i64, i64* %7, align 8
  %131 = icmp ult i64 %129, %130
  br i1 %131, label %132, label %168

132:                                              ; preds = %128
  store i64 0, i64* %15, align 8
  br label %133

133:                                              ; preds = %154, %132
  %134 = load i64, i64* %15, align 8
  %135 = load i64, i64* %7, align 8
  %136 = icmp ult i64 %134, %135
  br i1 %136, label %137, label %157

137:                                              ; preds = %133
  %138 = load i64, i64* %14, align 8
  %139 = getelementptr inbounds i8, i8* %24, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = load i64, i64* %15, align 8
  %143 = load i64, i64* %16, align 8
  %144 = call zeroext i8 @constant_time_eq_8_s(i64 %142, i64 %143)
  %145 = zext i8 %144 to i32
  %146 = and i32 %141, %145
  %147 = load i8*, i8** %5, align 8
  %148 = load i64, i64* %15, align 8
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = or i32 %151, %146
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %149, align 1
  br label %154

154:                                              ; preds = %137
  %155 = load i64, i64* %15, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %15, align 8
  br label %133

157:                                              ; preds = %133
  %158 = load i64, i64* %16, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %16, align 8
  %160 = load i64, i64* %16, align 8
  %161 = load i64, i64* %7, align 8
  %162 = call i64 @constant_time_lt_s(i64 %160, i64 %161)
  %163 = load i64, i64* %16, align 8
  %164 = and i64 %163, %162
  store i64 %164, i64* %16, align 8
  br label %165

165:                                              ; preds = %157
  %166 = load i64, i64* %14, align 8
  %167 = add i64 %166, 1
  store i64 %167, i64* %14, align 8
  br label %128

168:                                              ; preds = %128
  store i32 1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %169

169:                                              ; preds = %168, %46
  %170 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %170)
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ossl_assert(i32) #2

declare dso_local i32 @memset(i8*, i32, i64) #2

declare dso_local i64 @constant_time_eq_s(i64, i64) #2

declare dso_local i64 @constant_time_lt_s(i64, i64) #2

declare dso_local zeroext i8 @constant_time_eq_8_s(i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
