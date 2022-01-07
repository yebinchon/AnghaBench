; ModuleID = '/home/carl/AnghaBench/micropython/extmod/extr_modubinascii.c_mod_binascii_b2a_base64.c'
source_filename = "/home/carl/AnghaBench/micropython/extmod/extr_modubinascii.c_mod_binascii_b2a_base64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32, i64 }

@MP_BUFFER_READ = common dso_local global i32 0, align 4
@mp_type_bytes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mod_binascii_b2a_base64(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @MP_BUFFER_READ, align 4
  %11 = call i32 @mp_get_buffer_raise(i32 %9, %struct.TYPE_7__* %3, i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 1
  %19 = sdiv i32 %18, 3
  %20 = add nsw i32 %19, 1
  %21 = mul nsw i32 %20, 4
  br label %23

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %22, %15
  %24 = phi i32 [ %21, %15 ], [ 0, %22 ]
  %25 = add nsw i32 %24, 1
  %26 = call i32 @vstr_init_len(%struct.TYPE_6__* %4, i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %79, %23
  %35 = load i32, i32* %7, align 4
  %36 = icmp sge i32 %35, 3
  br i1 %36, label %37, label %82

37:                                               ; preds = %34
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 252
  %42 = ashr i32 %41, 2
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %6, align 8
  store i32 %42, i32* %43, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 3
  %49 = shl i32 %48, 4
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 240
  %54 = ashr i32 %53, 4
  %55 = or i32 %49, %54
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %6, align 8
  store i32 %55, i32* %56, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 15
  %62 = shl i32 %61, 2
  %63 = load i32*, i32** %5, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 192
  %67 = ashr i32 %66, 6
  %68 = or i32 %62, %67
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %6, align 8
  store i32 %68, i32* %69, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 63
  %75 = load i32*, i32** %6, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %6, align 8
  store i32 %74, i32* %75, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 3
  store i32* %78, i32** %5, align 8
  br label %79

79:                                               ; preds = %37
  %80 = load i32, i32* %7, align 4
  %81 = sub nsw i32 %80, 3
  store i32 %81, i32* %7, align 4
  br label %34

82:                                               ; preds = %34
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %128

85:                                               ; preds = %82
  %86 = load i32*, i32** %5, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 252
  %90 = ashr i32 %89, 2
  %91 = load i32*, i32** %6, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %6, align 8
  store i32 %90, i32* %91, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp eq i32 %93, 2
  br i1 %94, label %95, label %116

95:                                               ; preds = %85
  %96 = load i32*, i32** %5, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 3
  %100 = shl i32 %99, 4
  %101 = load i32*, i32** %5, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 240
  %105 = ashr i32 %104, 4
  %106 = or i32 %100, %105
  %107 = load i32*, i32** %6, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %6, align 8
  store i32 %106, i32* %107, align 4
  %109 = load i32*, i32** %5, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 15
  %113 = shl i32 %112, 2
  %114 = load i32*, i32** %6, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %115, i32** %6, align 8
  store i32 %113, i32* %114, align 4
  br label %126

116:                                              ; preds = %85
  %117 = load i32*, i32** %5, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 3
  %121 = shl i32 %120, 4
  %122 = load i32*, i32** %6, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %6, align 8
  store i32 %121, i32* %122, align 4
  %124 = load i32*, i32** %6, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %6, align 8
  store i32 64, i32* %124, align 4
  br label %126

126:                                              ; preds = %116, %95
  %127 = load i32*, i32** %6, align 8
  store i32 64, i32* %127, align 4
  br label %128

128:                                              ; preds = %126, %82
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to i32*
  store i32* %131, i32** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  br label %135

135:                                              ; preds = %181, %128
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %8, align 4
  %138 = icmp ne i32 %136, 0
  br i1 %138, label %139, label %184

139:                                              ; preds = %135
  %140 = load i32*, i32** %6, align 8
  %141 = load i32, i32* %140, align 4
  %142 = icmp slt i32 %141, 26
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = load i32*, i32** %6, align 8
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 65
  store i32 %146, i32* %144, align 4
  br label %181

147:                                              ; preds = %139
  %148 = load i32*, i32** %6, align 8
  %149 = load i32, i32* %148, align 4
  %150 = icmp slt i32 %149, 52
  br i1 %150, label %151, label %155

151:                                              ; preds = %147
  %152 = load i32*, i32** %6, align 8
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 71
  store i32 %154, i32* %152, align 4
  br label %180

155:                                              ; preds = %147
  %156 = load i32*, i32** %6, align 8
  %157 = load i32, i32* %156, align 4
  %158 = icmp slt i32 %157, 62
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = load i32*, i32** %6, align 8
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, -4
  store i32 %162, i32* %160, align 4
  br label %179

163:                                              ; preds = %155
  %164 = load i32*, i32** %6, align 8
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, 62
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = load i32*, i32** %6, align 8
  store i32 43, i32* %168, align 4
  br label %178

169:                                              ; preds = %163
  %170 = load i32*, i32** %6, align 8
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %171, 63
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = load i32*, i32** %6, align 8
  store i32 47, i32* %174, align 4
  br label %177

175:                                              ; preds = %169
  %176 = load i32*, i32** %6, align 8
  store i32 61, i32* %176, align 4
  br label %177

177:                                              ; preds = %175, %173
  br label %178

178:                                              ; preds = %177, %167
  br label %179

179:                                              ; preds = %178, %159
  br label %180

180:                                              ; preds = %179, %151
  br label %181

181:                                              ; preds = %180, %143
  %182 = load i32*, i32** %6, align 8
  %183 = getelementptr inbounds i32, i32* %182, i32 1
  store i32* %183, i32** %6, align 8
  br label %135

184:                                              ; preds = %135
  %185 = load i32*, i32** %6, align 8
  store i32 10, i32* %185, align 4
  %186 = call i32 @mp_obj_new_str_from_vstr(i32* @mp_type_bytes, %struct.TYPE_6__* %4)
  ret i32 %186
}

declare dso_local i32 @mp_get_buffer_raise(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @vstr_init_len(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @mp_obj_new_str_from_vstr(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
