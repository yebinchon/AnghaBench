; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_msg.c_CSignerInfo_Free.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_msg.c_CSignerInfo_Free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_30__, %struct.TYPE_28__ }
%struct.TYPE_20__ = type { i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, %struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_22__* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_22__* }
%struct.TYPE_18__ = type { %struct.TYPE_22__* }
%struct.TYPE_17__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { %struct.TYPE_22__* }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { %struct.TYPE_22__* }
%struct.TYPE_28__ = type { i64, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__, %struct.TYPE_25__ }
%struct.TYPE_26__ = type { %struct.TYPE_22__* }
%struct.TYPE_25__ = type { %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_24__ = type { %struct.TYPE_22__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }

@CERT_ID_ISSUER_SERIAL_NUMBER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*)* @CSignerInfo_Free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CSignerInfo_Free(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %5 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 5
  %7 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CERT_ID_ISSUER_SERIAL_NUMBER, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %19 = call i32 @CryptMemFree(%struct.TYPE_22__* %18)
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  %27 = call i32 @CryptMemFree(%struct.TYPE_22__* %26)
  br label %36

28:                                               ; preds = %1
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %33, align 8
  %35 = call i32 @CryptMemFree(%struct.TYPE_22__* %34)
  br label %36

36:                                               ; preds = %28, %11
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %40, align 8
  %42 = call i32 @CryptMemFree(%struct.TYPE_22__* %41)
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %46, align 8
  %48 = call i32 @CryptMemFree(%struct.TYPE_22__* %47)
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %51, align 8
  %53 = call i32 @CryptMemFree(%struct.TYPE_22__* %52)
  store i64 0, i64* %3, align 8
  br label %54

54:                                               ; preds = %109, %36
  %55 = load i64, i64* %3, align 8
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ult i64 %55, %59
  br i1 %60, label %61, label %112

61:                                               ; preds = %54
  store i64 0, i64* %4, align 8
  br label %62

62:                                               ; preds = %87, %61
  %63 = load i64, i64* %4, align 8
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %66, align 8
  %68 = load i64, i64* %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ult i64 %63, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %62
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %76, align 8
  %78 = load i64, i64* %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %80, align 8
  %82 = load i64, i64* %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %84, align 8
  %86 = call i32 @CryptMemFree(%struct.TYPE_22__* %85)
  br label %87

87:                                               ; preds = %73
  %88 = load i64, i64* %4, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %4, align 8
  br label %62

90:                                               ; preds = %62
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %93, align 8
  %95 = load i64, i64* %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %97, align 8
  %99 = call i32 @CryptMemFree(%struct.TYPE_22__* %98)
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %102, align 8
  %104 = load i64, i64* %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %106, align 8
  %108 = call i32 @CryptMemFree(%struct.TYPE_22__* %107)
  br label %109

109:                                              ; preds = %90
  %110 = load i64, i64* %3, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %3, align 8
  br label %54

112:                                              ; preds = %54
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %115, align 8
  %117 = call i32 @CryptMemFree(%struct.TYPE_22__* %116)
  store i64 0, i64* %3, align 8
  br label %118

118:                                              ; preds = %173, %112
  %119 = load i64, i64* %3, align 8
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ult i64 %119, %123
  br i1 %124, label %125, label %176

125:                                              ; preds = %118
  store i64 0, i64* %4, align 8
  br label %126

126:                                              ; preds = %151, %125
  %127 = load i64, i64* %4, align 8
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %130, align 8
  %132 = load i64, i64* %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ult i64 %127, %135
  br i1 %136, label %137, label %154

137:                                              ; preds = %126
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %140, align 8
  %142 = load i64, i64* %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %144, align 8
  %146 = load i64, i64* %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %148, align 8
  %150 = call i32 @CryptMemFree(%struct.TYPE_22__* %149)
  br label %151

151:                                              ; preds = %137
  %152 = load i64, i64* %4, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %4, align 8
  br label %126

154:                                              ; preds = %126
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %157, align 8
  %159 = load i64, i64* %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %161, align 8
  %163 = call i32 @CryptMemFree(%struct.TYPE_22__* %162)
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %166, align 8
  %168 = load i64, i64* %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %170, align 8
  %172 = call i32 @CryptMemFree(%struct.TYPE_22__* %171)
  br label %173

173:                                              ; preds = %154
  %174 = load i64, i64* %3, align 8
  %175 = add i64 %174, 1
  store i64 %175, i64* %3, align 8
  br label %118

176:                                              ; preds = %118
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %179, align 8
  %181 = call i32 @CryptMemFree(%struct.TYPE_22__* %180)
  ret void
}

declare dso_local i32 @CryptMemFree(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
