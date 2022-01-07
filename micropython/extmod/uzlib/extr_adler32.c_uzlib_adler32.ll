; ModuleID = '/home/carl/AnghaBench/micropython/extmod/uzlib/extr_adler32.c_uzlib_adler32.c'
source_filename = "/home/carl/AnghaBench/micropython/extmod/uzlib/extr_adler32.c_uzlib_adler32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A32_NMAX = common dso_local global i32 0, align 4
@A32_BASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uzlib_adler32(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 65535
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = ashr i32 %15, 16
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %204, %3
  %18 = load i32, i32* %5, align 4
  %19 = icmp ugt i32 %18, 0
  br i1 %19, label %20, label %214

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @A32_NMAX, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  br label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @A32_NMAX, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = sdiv i32 %30, 16
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %180, %28
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %185

35:                                               ; preds = %32
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = load i32, i32* %8, align 4
  %41 = add i32 %40, %39
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = add i32 %43, %42
  store i32 %44, i32* %9, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = load i32, i32* %8, align 4
  %50 = add i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = add i32 %52, %51
  store i32 %53, i32* %9, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = load i32, i32* %8, align 4
  %59 = add i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = add i32 %61, %60
  store i32 %62, i32* %9, align 4
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 3
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = load i32, i32* %8, align 4
  %68 = add i32 %67, %66
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = add i32 %70, %69
  store i32 %71, i32* %9, align 4
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 4
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = load i32, i32* %8, align 4
  %77 = add i32 %76, %75
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = add i32 %79, %78
  store i32 %80, i32* %9, align 4
  %81 = load i8*, i8** %7, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 5
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = load i32, i32* %8, align 4
  %86 = add i32 %85, %84
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = add i32 %88, %87
  store i32 %89, i32* %9, align 4
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 6
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = load i32, i32* %8, align 4
  %95 = add i32 %94, %93
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = add i32 %97, %96
  store i32 %98, i32* %9, align 4
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 7
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = load i32, i32* %8, align 4
  %104 = add i32 %103, %102
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %9, align 4
  %107 = add i32 %106, %105
  store i32 %107, i32* %9, align 4
  %108 = load i8*, i8** %7, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 8
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = load i32, i32* %8, align 4
  %113 = add i32 %112, %111
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %9, align 4
  %116 = add i32 %115, %114
  store i32 %116, i32* %9, align 4
  %117 = load i8*, i8** %7, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 9
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = load i32, i32* %8, align 4
  %122 = add i32 %121, %120
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %9, align 4
  %125 = add i32 %124, %123
  store i32 %125, i32* %9, align 4
  %126 = load i8*, i8** %7, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 10
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = load i32, i32* %8, align 4
  %131 = add i32 %130, %129
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %9, align 4
  %134 = add i32 %133, %132
  store i32 %134, i32* %9, align 4
  %135 = load i8*, i8** %7, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 11
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = load i32, i32* %8, align 4
  %140 = add i32 %139, %138
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %9, align 4
  %143 = add i32 %142, %141
  store i32 %143, i32* %9, align 4
  %144 = load i8*, i8** %7, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 12
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = load i32, i32* %8, align 4
  %149 = add i32 %148, %147
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %9, align 4
  %152 = add i32 %151, %150
  store i32 %152, i32* %9, align 4
  %153 = load i8*, i8** %7, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 13
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = load i32, i32* %8, align 4
  %158 = add i32 %157, %156
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %9, align 4
  %161 = add i32 %160, %159
  store i32 %161, i32* %9, align 4
  %162 = load i8*, i8** %7, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 14
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = load i32, i32* %8, align 4
  %167 = add i32 %166, %165
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %9, align 4
  %170 = add i32 %169, %168
  store i32 %170, i32* %9, align 4
  %171 = load i8*, i8** %7, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 15
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = load i32, i32* %8, align 4
  %176 = add i32 %175, %174
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* %9, align 4
  %179 = add i32 %178, %177
  store i32 %179, i32* %9, align 4
  br label %180

180:                                              ; preds = %35
  %181 = load i32, i32* %11, align 4
  %182 = add nsw i32 %181, -1
  store i32 %182, i32* %11, align 4
  %183 = load i8*, i8** %7, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 16
  store i8* %184, i8** %7, align 8
  br label %32

185:                                              ; preds = %32
  %186 = load i32, i32* %10, align 4
  %187 = srem i32 %186, 16
  store i32 %187, i32* %11, align 4
  br label %188

188:                                              ; preds = %201, %185
  %189 = load i32, i32* %11, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %204

191:                                              ; preds = %188
  %192 = load i8*, i8** %7, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %7, align 8
  %194 = load i8, i8* %192, align 1
  %195 = zext i8 %194 to i32
  %196 = load i32, i32* %8, align 4
  %197 = add i32 %196, %195
  store i32 %197, i32* %8, align 4
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* %9, align 4
  %200 = add i32 %199, %198
  store i32 %200, i32* %9, align 4
  br label %201

201:                                              ; preds = %191
  %202 = load i32, i32* %11, align 4
  %203 = add nsw i32 %202, -1
  store i32 %203, i32* %11, align 4
  br label %188

204:                                              ; preds = %188
  %205 = load i32, i32* @A32_BASE, align 4
  %206 = load i32, i32* %8, align 4
  %207 = urem i32 %206, %205
  store i32 %207, i32* %8, align 4
  %208 = load i32, i32* @A32_BASE, align 4
  %209 = load i32, i32* %9, align 4
  %210 = urem i32 %209, %208
  store i32 %210, i32* %9, align 4
  %211 = load i32, i32* %10, align 4
  %212 = load i32, i32* %5, align 4
  %213 = sub i32 %212, %211
  store i32 %213, i32* %5, align 4
  br label %17

214:                                              ; preds = %17
  %215 = load i32, i32* %9, align 4
  %216 = shl i32 %215, 16
  %217 = load i32, i32* %8, align 4
  %218 = or i32 %216, %217
  ret i32 %218
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
