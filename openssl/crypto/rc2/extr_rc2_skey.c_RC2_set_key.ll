; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rc2/extr_rc2_skey.c_RC2_set_key.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rc2/extr_rc2_skey.c_RC2_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@key_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RC2_set_key(%struct.TYPE_3__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = bitcast i32* %18 to i8*
  store i8* %19, i8** %11, align 8
  %20 = load i8*, i8** %11, align 8
  store i8 0, i8* %20, align 1
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 %21, 128
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 128, i32* %6, align 4
  br label %24

24:                                               ; preds = %23, %4
  %25 = load i32, i32* %8, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 1024, i32* %8, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i32, i32* %8, align 4
  %30 = icmp sgt i32 %29, 1024
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 1024, i32* %8, align 4
  br label %32

32:                                               ; preds = %31, %28
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %47, %32
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = load i8*, i8** %11, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8 %42, i8* %46, align 1
  br label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %33

50:                                               ; preds = %33
  %51 = load i8*, i8** %11, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  store i32 %57, i32* %14, align 4
  store i32 0, i32* %10, align 4
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %82, %50
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 128
  br i1 %61, label %62, label %87

62:                                               ; preds = %59
  %63 = load i32*, i32** @key_table, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = load i32, i32* %14, align 4
  %71 = add i32 %69, %70
  %72 = and i32 %71, 255
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %63, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = trunc i32 %76 to i8
  %78 = load i8*, i8** %11, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  store i8 %77, i8* %81, align 1
  br label %82

82:                                               ; preds = %62
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %59

87:                                               ; preds = %59
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 7
  %90 = ashr i32 %89, 3
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = sub nsw i32 128, %91
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %8, align 4
  %94 = sub nsw i32 0, %93
  %95 = and i32 %94, 7
  %96 = ashr i32 255, %95
  store i32 %96, i32* %13, align 4
  %97 = load i32*, i32** @key_table, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = load i32, i32* %13, align 4
  %105 = and i32 %103, %104
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %97, i64 %106
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = trunc i32 %109 to i8
  %111 = load i8*, i8** %11, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  store i8 %110, i8* %114, align 1
  br label %115

115:                                              ; preds = %119, %87
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %9, align 4
  %118 = icmp ne i32 %116, 0
  br i1 %118, label %119, label %140

119:                                              ; preds = %115
  %120 = load i32*, i32** @key_table, align 8
  %121 = load i8*, i8** %11, align 8
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %121, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = load i32, i32* %14, align 4
  %130 = xor i32 %128, %129
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %120, i64 %131
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %14, align 4
  %134 = load i32, i32* %14, align 4
  %135 = trunc i32 %134 to i8
  %136 = load i8*, i8** %11, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  store i8 %135, i8* %139, align 1
  br label %115

140:                                              ; preds = %115
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 63
  store i32* %144, i32** %12, align 8
  store i32 127, i32* %9, align 4
  br label %145

145:                                              ; preds = %167, %140
  %146 = load i32, i32* %9, align 4
  %147 = icmp sge i32 %146, 0
  br i1 %147, label %148, label %170

148:                                              ; preds = %145
  %149 = load i8*, i8** %11, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = shl i32 %154, 8
  %156 = load i8*, i8** %11, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sub nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %156, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = or i32 %155, %162
  %164 = and i32 %163, 65535
  %165 = load i32*, i32** %12, align 8
  %166 = getelementptr inbounds i32, i32* %165, i32 -1
  store i32* %166, i32** %12, align 8
  store i32 %164, i32* %165, align 4
  br label %167

167:                                              ; preds = %148
  %168 = load i32, i32* %9, align 4
  %169 = sub nsw i32 %168, 2
  store i32 %169, i32* %9, align 4
  br label %145

170:                                              ; preds = %145
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
