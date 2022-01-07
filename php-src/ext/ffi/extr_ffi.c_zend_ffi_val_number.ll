; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_val_number.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_val_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32 }

@ZEND_FFI_VAL_UINT32 = common dso_local global i8* null, align 8
@ZEND_FFI_VAL_UINT64 = common dso_local global i8* null, align 8
@ZEND_FFI_VAL_INT32 = common dso_local global i8* null, align 8
@ZEND_FFI_VAL_INT64 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_ffi_val_number(%struct.TYPE_3__* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = load i64, i64* %8, align 8
  %13 = sub i64 %12, 1
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 117
  br i1 %17, label %26, label %18

18:                                               ; preds = %4
  %19 = load i8*, i8** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = sub i64 %20, 1
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 85
  br i1 %25, label %26, label %61

26:                                               ; preds = %18, %4
  store i32 1, i32* %9, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = sub i64 %28, 2
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 108
  br i1 %33, label %42, label %34

34:                                               ; preds = %26
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = sub i64 %36, 2
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 76
  br i1 %41, label %42, label %60

42:                                               ; preds = %34, %26
  store i32 1, i32* %10, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = sub i64 %44, 3
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 108
  br i1 %49, label %58, label %50

50:                                               ; preds = %42
  %51 = load i8*, i8** %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = sub i64 %52, 3
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 76
  br i1 %57, label %58, label %59

58:                                               ; preds = %50, %42
  store i32 2, i32* %10, align 4
  br label %59

59:                                               ; preds = %58, %50
  br label %60

60:                                               ; preds = %59, %34
  br label %131

61:                                               ; preds = %18
  %62 = load i8*, i8** %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = sub i64 %63, 1
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 108
  br i1 %68, label %77, label %69

69:                                               ; preds = %61
  %70 = load i8*, i8** %7, align 8
  %71 = load i64, i64* %8, align 8
  %72 = sub i64 %71, 1
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 76
  br i1 %76, label %77, label %130

77:                                               ; preds = %69, %61
  store i32 1, i32* %10, align 4
  %78 = load i8*, i8** %7, align 8
  %79 = load i64, i64* %8, align 8
  %80 = sub i64 %79, 2
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 108
  br i1 %84, label %93, label %85

85:                                               ; preds = %77
  %86 = load i8*, i8** %7, align 8
  %87 = load i64, i64* %8, align 8
  %88 = sub i64 %87, 2
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 76
  br i1 %92, label %93, label %111

93:                                               ; preds = %85, %77
  store i32 2, i32* %10, align 4
  %94 = load i8*, i8** %7, align 8
  %95 = load i64, i64* %8, align 8
  %96 = sub i64 %95, 3
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 117
  br i1 %100, label %109, label %101

101:                                              ; preds = %93
  %102 = load i8*, i8** %7, align 8
  %103 = load i64, i64* %8, align 8
  %104 = sub i64 %103, 3
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 85
  br i1 %108, label %109, label %110

109:                                              ; preds = %101, %93
  store i32 1, i32* %9, align 4
  br label %110

110:                                              ; preds = %109, %101
  br label %129

111:                                              ; preds = %85
  %112 = load i8*, i8** %7, align 8
  %113 = load i64, i64* %8, align 8
  %114 = sub i64 %113, 2
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 117
  br i1 %118, label %127, label %119

119:                                              ; preds = %111
  %120 = load i8*, i8** %7, align 8
  %121 = load i64, i64* %8, align 8
  %122 = sub i64 %121, 2
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 85
  br i1 %126, label %127, label %128

127:                                              ; preds = %119, %111
  store i32 1, i32* %9, align 4
  br label %128

128:                                              ; preds = %127, %119
  br label %129

129:                                              ; preds = %128, %110
  br label %130

130:                                              ; preds = %129, %69
  br label %131

131:                                              ; preds = %130, %60
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %163

134:                                              ; preds = %131
  %135 = load i8*, i8** %7, align 8
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @strtoull(i8* %135, i32* null, i32 %136)
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %134
  %143 = load i8*, i8** @ZEND_FFI_VAL_UINT32, align 8
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  store i8* %143, i8** %145, align 8
  br label %162

146:                                              ; preds = %134
  %147 = load i32, i32* %10, align 4
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load i8*, i8** @ZEND_FFI_VAL_UINT64, align 8
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  store i8* %150, i8** %152, align 8
  br label %161

153:                                              ; preds = %146
  %154 = load i32, i32* %10, align 4
  %155 = icmp eq i32 %154, 2
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load i8*, i8** @ZEND_FFI_VAL_UINT64, align 8
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  store i8* %157, i8** %159, align 8
  br label %160

160:                                              ; preds = %156, %153
  br label %161

161:                                              ; preds = %160, %149
  br label %162

162:                                              ; preds = %161, %142
  br label %192

163:                                              ; preds = %131
  %164 = load i8*, i8** %7, align 8
  %165 = load i32, i32* %6, align 4
  %166 = call i32 @strtoll(i8* %164, i32* null, i32 %165)
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 8
  %169 = load i32, i32* %10, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %163
  %172 = load i8*, i8** @ZEND_FFI_VAL_INT32, align 8
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  store i8* %172, i8** %174, align 8
  br label %191

175:                                              ; preds = %163
  %176 = load i32, i32* %10, align 4
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %178, label %182

178:                                              ; preds = %175
  %179 = load i8*, i8** @ZEND_FFI_VAL_INT64, align 8
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  store i8* %179, i8** %181, align 8
  br label %190

182:                                              ; preds = %175
  %183 = load i32, i32* %10, align 4
  %184 = icmp eq i32 %183, 2
  br i1 %184, label %185, label %189

185:                                              ; preds = %182
  %186 = load i8*, i8** @ZEND_FFI_VAL_INT64, align 8
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  store i8* %186, i8** %188, align 8
  br label %189

189:                                              ; preds = %185, %182
  br label %190

190:                                              ; preds = %189, %178
  br label %191

191:                                              ; preds = %190, %171
  br label %192

192:                                              ; preds = %191, %162
  ret void
}

declare dso_local i32 @strtoull(i8*, i32*, i32) #1

declare dso_local i32 @strtoll(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
