; ModuleID = '/home/carl/AnghaBench/openssl/crypto/poly1305/extr_poly1305_ieee754.c_poly1305_emit.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/poly1305/extr_poly1305_ieee754.c_poly1305_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @poly1305_emit(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %7, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = and i64 %28, 4503599627370495
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = and i64 %37, 4503599627370495
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %9, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = and i64 %46, 4503599627370495
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %10, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 3
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = and i64 %55, 4503599627370495
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = ashr i32 %58, 32
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = and i32 %61, -4
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %12, align 4
  %64 = and i32 %63, 3
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %17, align 4
  %66 = ashr i32 %65, 2
  %67 = load i32, i32* %17, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = ashr i32 %72, 32
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = ashr i32 %77, 32
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = ashr i32 %82, 32
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 5
  store i32 %88, i32* %18, align 4
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %18, align 4
  %91 = ashr i32 %90, 32
  %92 = add nsw i32 %89, %91
  store i32 %92, i32* %18, align 4
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %18, align 4
  %95 = ashr i32 %94, 32
  %96 = add nsw i32 %93, %95
  store i32 %96, i32* %18, align 4
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %18, align 4
  %99 = ashr i32 %98, 32
  %100 = add nsw i32 %97, %99
  store i32 %100, i32* %18, align 4
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %18, align 4
  %103 = ashr i32 %102, 32
  %104 = add nsw i32 %101, %103
  store i32 %104, i32* %17, align 4
  %105 = load i32, i32* %17, align 4
  %106 = ashr i32 %105, 2
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %19, align 4
  %108 = load i32, i32* %19, align 4
  %109 = load i32, i32* %13, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %19, align 4
  %112 = load i32, i32* %14, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %19, align 4
  %115 = load i32, i32* %15, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %19, align 4
  %118 = load i32, i32* %16, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %19, align 4
  %121 = xor i32 %120, -1
  store i32 %121, i32* %19, align 4
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %19, align 4
  %124 = and i32 %122, %123
  %125 = load i32, i32* %13, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %19, align 4
  %129 = and i32 %127, %128
  %130 = load i32, i32* %14, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %19, align 4
  %134 = and i32 %132, %133
  %135 = load i32, i32* %15, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %19, align 4
  %139 = and i32 %137, %138
  %140 = load i32, i32* %16, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %13, align 4
  %143 = load i32*, i32** %6, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %142, %145
  store i32 %146, i32* %18, align 4
  store i32 %146, i32* %13, align 4
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %18, align 4
  %149 = ashr i32 %148, 32
  %150 = add nsw i32 %147, %149
  %151 = load i32*, i32** %6, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %150, %153
  store i32 %154, i32* %18, align 4
  store i32 %154, i32* %14, align 4
  %155 = load i32, i32* %15, align 4
  %156 = load i32, i32* %18, align 4
  %157 = ashr i32 %156, 32
  %158 = add nsw i32 %155, %157
  %159 = load i32*, i32** %6, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 2
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %158, %161
  store i32 %162, i32* %18, align 4
  store i32 %162, i32* %15, align 4
  %163 = load i32, i32* %16, align 4
  %164 = load i32, i32* %18, align 4
  %165 = ashr i32 %164, 32
  %166 = add nsw i32 %163, %165
  %167 = load i32*, i32** %6, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 3
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %166, %169
  store i32 %170, i32* %18, align 4
  store i32 %170, i32* %16, align 4
  %171 = load i8*, i8** %5, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 0
  %173 = load i32, i32* %13, align 4
  %174 = call i32 @U32TO8(i8* %172, i32 %173)
  %175 = load i8*, i8** %5, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 4
  %177 = load i32, i32* %14, align 4
  %178 = call i32 @U32TO8(i8* %176, i32 %177)
  %179 = load i8*, i8** %5, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 8
  %181 = load i32, i32* %15, align 4
  %182 = call i32 @U32TO8(i8* %180, i32 %181)
  %183 = load i8*, i8** %5, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 12
  %185 = load i32, i32* %16, align 4
  %186 = call i32 @U32TO8(i8* %184, i32 %185)
  ret void
}

declare dso_local i32 @U32TO8(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
