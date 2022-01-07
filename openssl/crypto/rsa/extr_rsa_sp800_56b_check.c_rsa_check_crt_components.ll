; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_sp800_56b_check.c_rsa_check_crt_components.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_sp800_56b_check.c_rsa_check_crt_components.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32*, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsa_check_crt_components(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 5
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %19, %14, %2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 5
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %29, %24
  store i32 0, i32* %3, align 4
  br label %178

40:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %178

41:                                               ; preds = %19
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @BN_CTX_start(i32* %42)
  %44 = load i32*, i32** %5, align 8
  %45 = call i32* @BN_CTX_get(i32* %44)
  store i32* %45, i32** %7, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call i32* @BN_CTX_get(i32* %46)
  store i32* %47, i32** %8, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call i32* @BN_CTX_get(i32* %48)
  store i32* %49, i32** %9, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %168

52:                                               ; preds = %41
  %53 = load i32*, i32** %8, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32* @BN_copy(i32* %53, i32* %56)
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %168

59:                                               ; preds = %52
  %60 = load i32*, i32** %8, align 8
  %61 = call i64 @BN_sub_word(i32* %60, i32 1)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %168

63:                                               ; preds = %59
  %64 = load i32*, i32** %9, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = call i32* @BN_copy(i32* %64, i32* %67)
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %168

70:                                               ; preds = %63
  %71 = load i32*, i32** %9, align 8
  %72 = call i64 @BN_sub_word(i32* %71, i32 1)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %168

74:                                               ; preds = %70
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 5
  %77 = load i32*, i32** %76, align 8
  %78 = call i32* (...) @BN_value_one()
  %79 = call i64 @BN_cmp(i32* %77, i32* %78)
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %168

81:                                               ; preds = %74
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 5
  %84 = load i32*, i32** %83, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = call i64 @BN_cmp(i32* %84, i32* %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %168

88:                                               ; preds = %81
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 4
  %91 = load i32*, i32** %90, align 8
  %92 = call i32* (...) @BN_value_one()
  %93 = call i64 @BN_cmp(i32* %91, i32* %92)
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %168

95:                                               ; preds = %88
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = load i32*, i32** %9, align 8
  %100 = call i64 @BN_cmp(i32* %98, i32* %99)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %168

102:                                              ; preds = %95
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = call i32* (...) @BN_value_one()
  %107 = call i64 @BN_cmp(i32* %105, i32* %106)
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %109, label %168

109:                                              ; preds = %102
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = call i64 @BN_cmp(i32* %112, i32* %115)
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %168

118:                                              ; preds = %109
  %119 = load i32*, i32** %7, align 8
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 5
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = load i32*, i32** %8, align 8
  %127 = load i32*, i32** %5, align 8
  %128 = call i64 @BN_mod_mul(i32* %119, i32* %122, i32* %125, i32* %126, i32* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %168

130:                                              ; preds = %118
  %131 = load i32*, i32** %7, align 8
  %132 = call i64 @BN_is_one(i32* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %168

134:                                              ; preds = %130
  %135 = load i32*, i32** %7, align 8
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 4
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = load i32*, i32** %9, align 8
  %143 = load i32*, i32** %5, align 8
  %144 = call i64 @BN_mod_mul(i32* %135, i32* %138, i32* %141, i32* %142, i32* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %168

146:                                              ; preds = %134
  %147 = load i32*, i32** %7, align 8
  %148 = call i64 @BN_is_one(i32* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %168

150:                                              ; preds = %146
  %151 = load i32*, i32** %7, align 8
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = load i32*, i32** %5, align 8
  %162 = call i64 @BN_mod_mul(i32* %151, i32* %154, i32* %157, i32* %160, i32* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %150
  %165 = load i32*, i32** %7, align 8
  %166 = call i64 @BN_is_one(i32* %165)
  %167 = icmp ne i64 %166, 0
  br label %168

168:                                              ; preds = %164, %150, %146, %134, %130, %118, %109, %102, %95, %88, %81, %74, %70, %63, %59, %52, %41
  %169 = phi i1 [ false, %150 ], [ false, %146 ], [ false, %134 ], [ false, %130 ], [ false, %118 ], [ false, %109 ], [ false, %102 ], [ false, %95 ], [ false, %88 ], [ false, %81 ], [ false, %74 ], [ false, %70 ], [ false, %63 ], [ false, %59 ], [ false, %52 ], [ false, %41 ], [ %167, %164 ]
  %170 = zext i1 %169 to i32
  store i32 %170, i32* %6, align 4
  %171 = load i32*, i32** %8, align 8
  %172 = call i32 @BN_clear(i32* %171)
  %173 = load i32*, i32** %9, align 8
  %174 = call i32 @BN_clear(i32* %173)
  %175 = load i32*, i32** %5, align 8
  %176 = call i32 @BN_CTX_end(i32* %175)
  %177 = load i32, i32* %6, align 4
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %168, %40, %39
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32* @BN_copy(i32*, i32*) #1

declare dso_local i64 @BN_sub_word(i32*, i32) #1

declare dso_local i64 @BN_cmp(i32*, i32*) #1

declare dso_local i32* @BN_value_one(...) #1

declare dso_local i64 @BN_mod_mul(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @BN_is_one(i32*) #1

declare dso_local i32 @BN_clear(i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
