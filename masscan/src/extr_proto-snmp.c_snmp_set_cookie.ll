; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-snmp.c_snmp_set_cookie.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-snmp.c_snmp_set_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_set_cookie(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @asn1_tag(i8* %13, i64 %14, i64* %8)
  %16 = icmp ne i32 %15, 48
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %217

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @asn1_length(i8* %19, i64 %20, i64* %8)
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %8, align 8
  %25 = add i64 %23, %24
  %26 = icmp ugt i64 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %8, align 8
  %30 = add i64 %28, %29
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %27, %18
  %32 = load i8*, i8** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @asn1_integer(i8* %32, i64 %33, i64* %8)
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %217

38:                                               ; preds = %31
  %39 = load i8*, i8** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @asn1_tag(i8* %39, i64 %40, i64* %8)
  %42 = icmp ne i32 %41, 4
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %217

44:                                               ; preds = %38
  %45 = load i8*, i8** %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @asn1_length(i8* %45, i64 %46, i64* %8)
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %8, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @asn1_tag(i8* %50, i64 %51, i64* %8)
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* %11, align 8
  %55 = icmp ult i64 %54, 160
  br i1 %55, label %59, label %56

56:                                               ; preds = %44
  %57 = load i64, i64* %11, align 8
  %58 = icmp ult i64 165, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %56, %44
  store i32 0, i32* %4, align 4
  br label %217

60:                                               ; preds = %56
  %61 = load i8*, i8** %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i64 @asn1_length(i8* %61, i64 %62, i64* %8)
  store i64 %63, i64* %9, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %8, align 8
  %67 = add i64 %65, %66
  %68 = icmp ugt i64 %64, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %60
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %8, align 8
  %72 = add i64 %70, %71
  store i64 %72, i64* %6, align 8
  br label %73

73:                                               ; preds = %69, %60
  %74 = load i8*, i8** %5, align 8
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @asn1_tag(i8* %74, i64 %75, i64* %8)
  %77 = load i8*, i8** %5, align 8
  %78 = load i64, i64* %6, align 8
  %79 = call i64 @asn1_length(i8* %77, i64 %78, i64* %8)
  store i64 %79, i64* %12, align 8
  %80 = load i64, i64* %12, align 8
  switch i64 %80, label %216 [
    i64 0, label %81
    i64 1, label %82
    i64 2, label %96
    i64 3, label %117
    i64 4, label %145
    i64 5, label %180
  ]

81:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %217

82:                                               ; preds = %73
  %83 = load i64, i64* %7, align 8
  %84 = lshr i64 %83, 0
  %85 = trunc i64 %84 to i8
  %86 = zext i8 %85 to i32
  %87 = and i32 %86, 127
  %88 = trunc i32 %87 to i8
  %89 = load i8*, i8** %5, align 8
  %90 = load i64, i64* %8, align 8
  %91 = add i64 %90, 0
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  store i8 %88, i8* %92, align 1
  %93 = load i64, i64* %7, align 8
  %94 = and i64 %93, 127
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %4, align 4
  br label %217

96:                                               ; preds = %73
  %97 = load i64, i64* %7, align 8
  %98 = lshr i64 %97, 8
  %99 = trunc i64 %98 to i8
  %100 = zext i8 %99 to i32
  %101 = and i32 %100, 127
  %102 = trunc i32 %101 to i8
  %103 = load i8*, i8** %5, align 8
  %104 = load i64, i64* %8, align 8
  %105 = add i64 %104, 0
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  store i8 %102, i8* %106, align 1
  %107 = load i64, i64* %7, align 8
  %108 = lshr i64 %107, 0
  %109 = trunc i64 %108 to i8
  %110 = load i8*, i8** %5, align 8
  %111 = load i64, i64* %8, align 8
  %112 = add i64 %111, 1
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  store i8 %109, i8* %113, align 1
  %114 = load i64, i64* %7, align 8
  %115 = and i64 %114, 32767
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %4, align 4
  br label %217

117:                                              ; preds = %73
  %118 = load i64, i64* %7, align 8
  %119 = lshr i64 %118, 16
  %120 = trunc i64 %119 to i8
  %121 = zext i8 %120 to i32
  %122 = and i32 %121, 127
  %123 = trunc i32 %122 to i8
  %124 = load i8*, i8** %5, align 8
  %125 = load i64, i64* %8, align 8
  %126 = add i64 %125, 0
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  store i8 %123, i8* %127, align 1
  %128 = load i64, i64* %7, align 8
  %129 = lshr i64 %128, 8
  %130 = trunc i64 %129 to i8
  %131 = load i8*, i8** %5, align 8
  %132 = load i64, i64* %8, align 8
  %133 = add i64 %132, 1
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  store i8 %130, i8* %134, align 1
  %135 = load i64, i64* %7, align 8
  %136 = lshr i64 %135, 0
  %137 = trunc i64 %136 to i8
  %138 = load i8*, i8** %5, align 8
  %139 = load i64, i64* %8, align 8
  %140 = add i64 %139, 2
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  store i8 %137, i8* %141, align 1
  %142 = load i64, i64* %7, align 8
  %143 = and i64 %142, 8388607
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %4, align 4
  br label %217

145:                                              ; preds = %73
  %146 = load i64, i64* %7, align 8
  %147 = lshr i64 %146, 24
  %148 = trunc i64 %147 to i8
  %149 = zext i8 %148 to i32
  %150 = and i32 %149, 127
  %151 = trunc i32 %150 to i8
  %152 = load i8*, i8** %5, align 8
  %153 = load i64, i64* %8, align 8
  %154 = add i64 %153, 0
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  store i8 %151, i8* %155, align 1
  %156 = load i64, i64* %7, align 8
  %157 = lshr i64 %156, 16
  %158 = trunc i64 %157 to i8
  %159 = load i8*, i8** %5, align 8
  %160 = load i64, i64* %8, align 8
  %161 = add i64 %160, 1
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  store i8 %158, i8* %162, align 1
  %163 = load i64, i64* %7, align 8
  %164 = lshr i64 %163, 8
  %165 = trunc i64 %164 to i8
  %166 = load i8*, i8** %5, align 8
  %167 = load i64, i64* %8, align 8
  %168 = add i64 %167, 2
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  store i8 %165, i8* %169, align 1
  %170 = load i64, i64* %7, align 8
  %171 = lshr i64 %170, 0
  %172 = trunc i64 %171 to i8
  %173 = load i8*, i8** %5, align 8
  %174 = load i64, i64* %8, align 8
  %175 = add i64 %174, 3
  %176 = getelementptr inbounds i8, i8* %173, i64 %175
  store i8 %172, i8* %176, align 1
  %177 = load i64, i64* %7, align 8
  %178 = and i64 %177, 2147483647
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %4, align 4
  br label %217

180:                                              ; preds = %73
  %181 = load i8*, i8** %5, align 8
  %182 = load i64, i64* %8, align 8
  %183 = add i64 %182, 0
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  store i8 0, i8* %184, align 1
  %185 = load i64, i64* %7, align 8
  %186 = lshr i64 %185, 24
  %187 = trunc i64 %186 to i8
  %188 = load i8*, i8** %5, align 8
  %189 = load i64, i64* %8, align 8
  %190 = add i64 %189, 1
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  store i8 %187, i8* %191, align 1
  %192 = load i64, i64* %7, align 8
  %193 = lshr i64 %192, 16
  %194 = trunc i64 %193 to i8
  %195 = load i8*, i8** %5, align 8
  %196 = load i64, i64* %8, align 8
  %197 = add i64 %196, 2
  %198 = getelementptr inbounds i8, i8* %195, i64 %197
  store i8 %194, i8* %198, align 1
  %199 = load i64, i64* %7, align 8
  %200 = lshr i64 %199, 8
  %201 = trunc i64 %200 to i8
  %202 = load i8*, i8** %5, align 8
  %203 = load i64, i64* %8, align 8
  %204 = add i64 %203, 3
  %205 = getelementptr inbounds i8, i8* %202, i64 %204
  store i8 %201, i8* %205, align 1
  %206 = load i64, i64* %7, align 8
  %207 = lshr i64 %206, 0
  %208 = trunc i64 %207 to i8
  %209 = load i8*, i8** %5, align 8
  %210 = load i64, i64* %8, align 8
  %211 = add i64 %210, 4
  %212 = getelementptr inbounds i8, i8* %209, i64 %211
  store i8 %208, i8* %212, align 1
  %213 = load i64, i64* %7, align 8
  %214 = and i64 %213, 4294967295
  %215 = trunc i64 %214 to i32
  store i32 %215, i32* %4, align 4
  br label %217

216:                                              ; preds = %73
  store i32 0, i32* %4, align 4
  br label %217

217:                                              ; preds = %216, %180, %145, %117, %96, %82, %81, %59, %43, %37, %17
  %218 = load i32, i32* %4, align 4
  ret i32 %218
}

declare dso_local i32 @asn1_tag(i8*, i64, i64*) #1

declare dso_local i64 @asn1_length(i8*, i64, i64*) #1

declare dso_local i64 @asn1_integer(i8*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
