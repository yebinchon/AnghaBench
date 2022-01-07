; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/sekurlsa/crypto/extr_kuhl_m_sekurlsa_nt5.c_SymCryptDesGenCrypt2.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/sekurlsa/crypto/extr_kuhl_m_sekurlsa_nt5.c_SymCryptDesGenCrypt2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SymCryptDesGenCrypt2(%struct.TYPE_3__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = add nsw i64 %15, 4
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i64, i64* %7, align 8
  %20 = add nsw i64 %19, 0
  %21 = inttoptr i64 %20 to i32*
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @ROL32(i32 %23, i32 4)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = xor i32 %25, %26
  %28 = and i32 %27, -252645136
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %10, align 4
  %31 = xor i32 %30, %29
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %11, align 4
  %34 = xor i32 %33, %32
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @ROL32(i32 %35, i32 20)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = xor i32 %37, %38
  %40 = and i32 %39, -1048561
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %10, align 4
  %43 = xor i32 %42, %41
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %11, align 4
  %46 = xor i32 %45, %44
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @ROL32(i32 %47, i32 14)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = xor i32 %49, %50
  %52 = and i32 %51, 858993459
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %10, align 4
  %55 = xor i32 %54, %53
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %11, align 4
  %58 = xor i32 %57, %56
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @ROL32(i32 %59, i32 22)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = xor i32 %61, %62
  %64 = and i32 %63, 66847740
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %10, align 4
  %67 = xor i32 %66, %65
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %11, align 4
  %70 = xor i32 %69, %68
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @ROL32(i32 %71, i32 9)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = xor i32 %73, %74
  %76 = and i32 %75, -1431655766
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %10, align 4
  %79 = xor i32 %78, %77
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %11, align 4
  %82 = xor i32 %81, %80
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @ROL32(i32 %83, i32 1)
  store i32 %84, i32* %10, align 4
  %85 = load i64, i64* %9, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %117

87:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  br label %88

88:                                               ; preds = %113, %87
  %89 = load i32, i32* %14, align 4
  %90 = icmp slt i32 %89, 16
  br i1 %90, label %91, label %116

91:                                               ; preds = %88
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @F(i32 %92, i32 %93, i32 %100)
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @F(i32 %102, i32 %103, i32 %111)
  br label %113

113:                                              ; preds = %91
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %114, 2
  store i32 %115, i32* %14, align 4
  br label %88

116:                                              ; preds = %88
  br label %147

117:                                              ; preds = %4
  store i32 14, i32* %14, align 4
  br label %118

118:                                              ; preds = %143, %117
  %119 = load i32, i32* %14, align 4
  %120 = icmp sge i32 %119, 0
  br i1 %120, label %121, label %146

121:                                              ; preds = %118
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %11, align 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @F(i32 %122, i32 %123, i32 %131)
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @F(i32 %133, i32 %134, i32 %141)
  br label %143

143:                                              ; preds = %121
  %144 = load i32, i32* %14, align 4
  %145 = sub nsw i32 %144, 2
  store i32 %145, i32* %14, align 4
  br label %118

146:                                              ; preds = %118
  br label %147

147:                                              ; preds = %146, %116
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @ROR32(i32 %148, i32 1)
  store i32 %149, i32* %11, align 4
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* %11, align 4
  %152 = xor i32 %150, %151
  %153 = and i32 %152, -1431655766
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* %10, align 4
  %156 = xor i32 %155, %154
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* %11, align 4
  %159 = xor i32 %158, %157
  store i32 %159, i32* %11, align 4
  %160 = load i32, i32* %10, align 4
  %161 = call i32 @ROR32(i32 %160, i32 9)
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* %11, align 4
  %164 = xor i32 %162, %163
  %165 = and i32 %164, 66847740
  store i32 %165, i32* %12, align 4
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* %10, align 4
  %168 = xor i32 %167, %166
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* %11, align 4
  %171 = xor i32 %170, %169
  store i32 %171, i32* %11, align 4
  %172 = load i32, i32* %10, align 4
  %173 = call i32 @ROR32(i32 %172, i32 22)
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* %11, align 4
  %176 = xor i32 %174, %175
  %177 = and i32 %176, 858993459
  store i32 %177, i32* %12, align 4
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* %10, align 4
  %180 = xor i32 %179, %178
  store i32 %180, i32* %10, align 4
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* %11, align 4
  %183 = xor i32 %182, %181
  store i32 %183, i32* %11, align 4
  %184 = load i32, i32* %11, align 4
  %185 = call i32 @ROR32(i32 %184, i32 14)
  store i32 %185, i32* %11, align 4
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* %11, align 4
  %188 = xor i32 %186, %187
  %189 = and i32 %188, -1048561
  store i32 %189, i32* %12, align 4
  %190 = load i32, i32* %12, align 4
  %191 = load i32, i32* %10, align 4
  %192 = xor i32 %191, %190
  store i32 %192, i32* %10, align 4
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* %11, align 4
  %195 = xor i32 %194, %193
  store i32 %195, i32* %11, align 4
  %196 = load i32, i32* %11, align 4
  %197 = call i32 @ROR32(i32 %196, i32 20)
  store i32 %197, i32* %11, align 4
  %198 = load i32, i32* %10, align 4
  %199 = load i32, i32* %11, align 4
  %200 = xor i32 %198, %199
  %201 = and i32 %200, -252645136
  store i32 %201, i32* %12, align 4
  %202 = load i32, i32* %12, align 4
  %203 = load i32, i32* %10, align 4
  %204 = xor i32 %203, %202
  store i32 %204, i32* %10, align 4
  %205 = load i32, i32* %12, align 4
  %206 = load i32, i32* %11, align 4
  %207 = xor i32 %206, %205
  store i32 %207, i32* %11, align 4
  %208 = load i32, i32* %10, align 4
  %209 = call i32 @ROR32(i32 %208, i32 4)
  store i32 %209, i32* %10, align 4
  %210 = load i32, i32* %10, align 4
  %211 = load i64, i64* %8, align 8
  %212 = add nsw i64 %211, 0
  %213 = inttoptr i64 %212 to i32*
  store i32 %210, i32* %213, align 4
  %214 = load i32, i32* %11, align 4
  %215 = load i64, i64* %8, align 8
  %216 = add nsw i64 %215, 4
  %217 = inttoptr i64 %216 to i32*
  store i32 %214, i32* %217, align 4
  %218 = load i32, i32* %5, align 4
  ret i32 %218
}

declare dso_local i32 @ROL32(i32, i32) #1

declare dso_local i32 @F(i32, i32, i32) #1

declare dso_local i32 @ROR32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
