; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_substitution.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_substitution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_standard_sub_info = type { i8, i8*, i32, i8*, i32, i8*, i32 }
%struct.demangle_component = type { i32 }
%struct.d_info = type { i32, i32, i8*, %struct.demangle_component**, i64 }

@DMGL_VERBOSE = common dso_local global i32 0, align 4
@standard_subs = common dso_local global %struct.d_standard_sub_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*, i32)* @d_substitution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_substitution(%struct.d_info* %0, i32 %1) #0 {
  %3 = alloca %struct.demangle_component*, align 8
  %4 = alloca %struct.d_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.d_standard_sub_info*, align 8
  %11 = alloca %struct.d_standard_sub_info*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.demangle_component*, align 8
  store %struct.d_info* %0, %struct.d_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.d_info*, %struct.d_info** %4, align 8
  %17 = call i32 @d_check_char(%struct.d_info* %16, i8 signext 83)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store %struct.demangle_component* null, %struct.demangle_component** %3, align 8
  br label %204

20:                                               ; preds = %2
  %21 = load %struct.d_info*, %struct.d_info** %4, align 8
  %22 = call signext i8 @d_next_char(%struct.d_info* %21)
  store i8 %22, i8* %6, align 1
  %23 = load i8, i8* %6, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 95
  br i1 %25, label %34, label %26

26:                                               ; preds = %20
  %27 = load i8, i8* %6, align 1
  %28 = call i64 @IS_DIGIT(i8 signext %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i8, i8* %6, align 1
  %32 = call i64 @IS_UPPER(i8 signext %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %96

34:                                               ; preds = %30, %26, %20
  store i32 0, i32* %7, align 4
  %35 = load i8, i8* %6, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 95
  br i1 %37, label %38, label %80

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %73, %38
  %40 = load i8, i8* %6, align 1
  %41 = call i64 @IS_DIGIT(i8 signext %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = mul i32 %44, 36
  %46 = load i8, i8* %6, align 1
  %47 = sext i8 %46 to i32
  %48 = add i32 %45, %47
  %49 = sub i32 %48, 48
  store i32 %49, i32* %8, align 4
  br label %64

50:                                               ; preds = %39
  %51 = load i8, i8* %6, align 1
  %52 = call i64 @IS_UPPER(i8 signext %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = mul i32 %55, 36
  %57 = load i8, i8* %6, align 1
  %58 = sext i8 %57 to i32
  %59 = add i32 %56, %58
  %60 = sub i32 %59, 65
  %61 = add i32 %60, 10
  store i32 %61, i32* %8, align 4
  br label %63

62:                                               ; preds = %50
  store %struct.demangle_component* null, %struct.demangle_component** %3, align 8
  br label %204

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %43
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store %struct.demangle_component* null, %struct.demangle_component** %3, align 8
  br label %204

69:                                               ; preds = %64
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %7, align 4
  %71 = load %struct.d_info*, %struct.d_info** %4, align 8
  %72 = call signext i8 @d_next_char(%struct.d_info* %71)
  store i8 %72, i8* %6, align 1
  br label %73

73:                                               ; preds = %69
  %74 = load i8, i8* %6, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 95
  br i1 %76, label %39, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %7, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %77, %34
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.d_info*, %struct.d_info** %4, align 8
  %83 = getelementptr inbounds %struct.d_info, %struct.d_info* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = icmp uge i32 %81, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  store %struct.demangle_component* null, %struct.demangle_component** %3, align 8
  br label %204

88:                                               ; preds = %80
  %89 = load %struct.d_info*, %struct.d_info** %4, align 8
  %90 = getelementptr inbounds %struct.d_info, %struct.d_info* %89, i32 0, i32 3
  %91 = load %struct.demangle_component**, %struct.demangle_component*** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.demangle_component*, %struct.demangle_component** %91, i64 %93
  %95 = load %struct.demangle_component*, %struct.demangle_component** %94, align 8
  store %struct.demangle_component* %95, %struct.demangle_component** %3, align 8
  br label %204

96:                                               ; preds = %30
  %97 = load %struct.d_info*, %struct.d_info** %4, align 8
  %98 = getelementptr inbounds %struct.d_info, %struct.d_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @DMGL_VERBOSE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %121, label %106

106:                                              ; preds = %96
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %106
  %110 = load %struct.d_info*, %struct.d_info** %4, align 8
  %111 = call signext i8 @d_peek_char(%struct.d_info* %110)
  store i8 %111, i8* %12, align 1
  %112 = load i8, i8* %12, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 67
  br i1 %114, label %119, label %115

115:                                              ; preds = %109
  %116 = load i8, i8* %12, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 68
  br i1 %118, label %119, label %120

119:                                              ; preds = %115, %109
  store i32 1, i32* %9, align 4
  br label %120

120:                                              ; preds = %119, %115
  br label %121

121:                                              ; preds = %120, %106, %96
  %122 = load %struct.d_standard_sub_info*, %struct.d_standard_sub_info** @standard_subs, align 8
  %123 = getelementptr inbounds %struct.d_standard_sub_info, %struct.d_standard_sub_info* %122, i64 0
  %124 = getelementptr inbounds %struct.d_standard_sub_info, %struct.d_standard_sub_info* %123, i64 0
  store %struct.d_standard_sub_info* %124, %struct.d_standard_sub_info** %11, align 8
  %125 = load %struct.d_standard_sub_info*, %struct.d_standard_sub_info** @standard_subs, align 8
  %126 = getelementptr inbounds %struct.d_standard_sub_info, %struct.d_standard_sub_info* %125, i64 0
  store %struct.d_standard_sub_info* %126, %struct.d_standard_sub_info** %10, align 8
  br label %127

127:                                              ; preds = %200, %121
  %128 = load %struct.d_standard_sub_info*, %struct.d_standard_sub_info** %10, align 8
  %129 = load %struct.d_standard_sub_info*, %struct.d_standard_sub_info** %11, align 8
  %130 = icmp ult %struct.d_standard_sub_info* %128, %129
  br i1 %130, label %131, label %203

131:                                              ; preds = %127
  %132 = load i8, i8* %6, align 1
  %133 = sext i8 %132 to i32
  %134 = load %struct.d_standard_sub_info*, %struct.d_standard_sub_info** %10, align 8
  %135 = getelementptr inbounds %struct.d_standard_sub_info, %struct.d_standard_sub_info* %134, i32 0, i32 0
  %136 = load i8, i8* %135, align 8
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %133, %137
  br i1 %138, label %139, label %199

139:                                              ; preds = %131
  %140 = load %struct.d_standard_sub_info*, %struct.d_standard_sub_info** %10, align 8
  %141 = getelementptr inbounds %struct.d_standard_sub_info, %struct.d_standard_sub_info* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %155

144:                                              ; preds = %139
  %145 = load %struct.d_info*, %struct.d_info** %4, align 8
  %146 = load %struct.d_standard_sub_info*, %struct.d_standard_sub_info** %10, align 8
  %147 = getelementptr inbounds %struct.d_standard_sub_info, %struct.d_standard_sub_info* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = load %struct.d_standard_sub_info*, %struct.d_standard_sub_info** %10, align 8
  %150 = getelementptr inbounds %struct.d_standard_sub_info, %struct.d_standard_sub_info* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i8* @d_make_sub(%struct.d_info* %145, i8* %148, i32 %151)
  %153 = load %struct.d_info*, %struct.d_info** %4, align 8
  %154 = getelementptr inbounds %struct.d_info, %struct.d_info* %153, i32 0, i32 2
  store i8* %152, i8** %154, align 8
  br label %155

155:                                              ; preds = %144, %139
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %155
  %159 = load %struct.d_standard_sub_info*, %struct.d_standard_sub_info** %10, align 8
  %160 = getelementptr inbounds %struct.d_standard_sub_info, %struct.d_standard_sub_info* %159, i32 0, i32 3
  %161 = load i8*, i8** %160, align 8
  store i8* %161, i8** %13, align 8
  %162 = load %struct.d_standard_sub_info*, %struct.d_standard_sub_info** %10, align 8
  %163 = getelementptr inbounds %struct.d_standard_sub_info, %struct.d_standard_sub_info* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  store i32 %164, i32* %14, align 4
  br label %172

165:                                              ; preds = %155
  %166 = load %struct.d_standard_sub_info*, %struct.d_standard_sub_info** %10, align 8
  %167 = getelementptr inbounds %struct.d_standard_sub_info, %struct.d_standard_sub_info* %166, i32 0, i32 5
  %168 = load i8*, i8** %167, align 8
  store i8* %168, i8** %13, align 8
  %169 = load %struct.d_standard_sub_info*, %struct.d_standard_sub_info** %10, align 8
  %170 = getelementptr inbounds %struct.d_standard_sub_info, %struct.d_standard_sub_info* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 8
  store i32 %171, i32* %14, align 4
  br label %172

172:                                              ; preds = %165, %158
  %173 = load i32, i32* %14, align 4
  %174 = load %struct.d_info*, %struct.d_info** %4, align 8
  %175 = getelementptr inbounds %struct.d_info, %struct.d_info* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, %173
  store i32 %177, i32* %175, align 4
  %178 = load %struct.d_info*, %struct.d_info** %4, align 8
  %179 = load i8*, i8** %13, align 8
  %180 = load i32, i32* %14, align 4
  %181 = call i8* @d_make_sub(%struct.d_info* %178, i8* %179, i32 %180)
  %182 = bitcast i8* %181 to %struct.demangle_component*
  store %struct.demangle_component* %182, %struct.demangle_component** %15, align 8
  %183 = load %struct.d_info*, %struct.d_info** %4, align 8
  %184 = call signext i8 @d_peek_char(%struct.d_info* %183)
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 66
  br i1 %186, label %187, label %197

187:                                              ; preds = %172
  %188 = load %struct.d_info*, %struct.d_info** %4, align 8
  %189 = load %struct.demangle_component*, %struct.demangle_component** %15, align 8
  %190 = call %struct.demangle_component* @d_abi_tags(%struct.d_info* %188, %struct.demangle_component* %189)
  store %struct.demangle_component* %190, %struct.demangle_component** %15, align 8
  %191 = load %struct.d_info*, %struct.d_info** %4, align 8
  %192 = load %struct.demangle_component*, %struct.demangle_component** %15, align 8
  %193 = call i32 @d_add_substitution(%struct.d_info* %191, %struct.demangle_component* %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %187
  store %struct.demangle_component* null, %struct.demangle_component** %3, align 8
  br label %204

196:                                              ; preds = %187
  br label %197

197:                                              ; preds = %196, %172
  %198 = load %struct.demangle_component*, %struct.demangle_component** %15, align 8
  store %struct.demangle_component* %198, %struct.demangle_component** %3, align 8
  br label %204

199:                                              ; preds = %131
  br label %200

200:                                              ; preds = %199
  %201 = load %struct.d_standard_sub_info*, %struct.d_standard_sub_info** %10, align 8
  %202 = getelementptr inbounds %struct.d_standard_sub_info, %struct.d_standard_sub_info* %201, i32 1
  store %struct.d_standard_sub_info* %202, %struct.d_standard_sub_info** %10, align 8
  br label %127

203:                                              ; preds = %127
  store %struct.demangle_component* null, %struct.demangle_component** %3, align 8
  br label %204

204:                                              ; preds = %203, %197, %195, %88, %87, %68, %62, %19
  %205 = load %struct.demangle_component*, %struct.demangle_component** %3, align 8
  ret %struct.demangle_component* %205
}

declare dso_local i32 @d_check_char(%struct.d_info*, i8 signext) #1

declare dso_local signext i8 @d_next_char(%struct.d_info*) #1

declare dso_local i64 @IS_DIGIT(i8 signext) #1

declare dso_local i64 @IS_UPPER(i8 signext) #1

declare dso_local signext i8 @d_peek_char(%struct.d_info*) #1

declare dso_local i8* @d_make_sub(%struct.d_info*, i8*, i32) #1

declare dso_local %struct.demangle_component* @d_abi_tags(%struct.d_info*, %struct.demangle_component*) #1

declare dso_local i32 @d_add_substitution(%struct.d_info*, %struct.demangle_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
